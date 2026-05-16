#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
ProcessManager - Manages ROS launch processes with proper lifecycle control

Replaces unsafe os.system() calls with subprocess.Popen for:
- Full process lifecycle control
- Proper cleanup on shutdown
- Error handling and timeout management
- No zombie processes
"""

import rospy
import time
from threading import Lock
import subprocess
import signal
import psutil
import os


class ProcessManager:
    """
    Manages ROS launch files using subprocess.Popen

    This provides better control than os.system() by:
    - Tracking process lifecycle
    - Proper cleanup and shutdown
    - Timeout and error handling
    - No zombie processes

    Example:
        manager = RoslaunchAPIManager()

        # Launch a file
        success = manager.launch_file(
            "cartographer_run",
            "slam.launch",
            [("simulation", "false"), ("subfix", "py")]
        )

        # Stop when done
        manager.stop()
    """

    def __init__(self):
        """Initialize the launch manager"""
        self.process = None
        self.lock = Lock()

    def launch_file(self, package, launch_file, args=None, wait_time=2.0):
        """
        Launch a roslaunch file with arguments

        Args:
            package (str): ROS package name (e.g., "cartographer_run")
            launch_file (str): Launch file name (e.g., "slam.launch")
            args (list): List of tuples [(key, value), ...] for launch arguments
            wait_time (float): Time to wait after launch to verify nodes started

        Returns:
            bool: True if successful, False otherwise

        Example:
            success = manager.launch_file(
                "agvlidar_navigation",
                "map_server_amcl.launch",
                [
                    ("simulation", "false"),
                    ("map_file", "/home/user/maps/factory"),
                    ("initial_pose_x", "0.0"),
                    ("initial_pose_y", "0.0"),
                    ("initial_pose_a", "0.0")
                ]
            )
        """
        with self.lock:
            try:
                # Stop existing process first
                if self.process is not None:
                    rospy.loginfo("Stopping existing process before starting new one...")
                    self._stop_internal()

                # Build roslaunch command
                cmd = ["roslaunch", package, launch_file]
                if args:
                    for key, value in args:
                        cmd.append(f"{key}:={value}")

                rospy.loginfo(f"Launching: {' '.join(cmd)}")

                # Start process with subprocess.Popen
                # Use preexec_fn to create new process group
                # stdout=None and stderr=None allow output to display on terminal
                self.process = subprocess.Popen(
                    cmd,
                    stdout=None,  # Output goes to terminal
                    stderr=None,  # Errors go to terminal
                    preexec_fn=os.setsid  # Create new process group
                )

                # Wait for nodes to come up
                time.sleep(wait_time)

                # Verify process is still running
                if self.is_running():
                    rospy.loginfo("Launch started successfully")
                    return True
                else:
                    rospy.logerr("Launch process terminated unexpectedly")
                    return False

            except Exception as e:
                rospy.logerr(f"Failed to launch {package}/{launch_file}: {e}")
                self.process = None
                return False

    def stop(self, timeout=5.0):
        """
        Stop the current process with timeout

        Args:
            timeout (float): Maximum time to wait for clean shutdown (seconds)

        Returns:
            bool: True if stopped successfully, False otherwise
        """
        with self.lock:
            return self._stop_internal(timeout)

    def _stop_internal(self, timeout=5.0):
        """Internal stop method (call with lock held)"""
        if self.process is None:
            return True

        try:
            rospy.loginfo("Stopping launch process...")

            # Get process group ID
            try:
                pgid = os.getpgid(self.process.pid)

                # Send SIGINT to entire process group (like Ctrl+C)
                os.killpg(pgid, signal.SIGINT)
                rospy.loginfo(f"Sent SIGINT to process group {pgid}")

                # Wait for process to terminate
                try:
                    self.process.wait(timeout=timeout)
                    rospy.loginfo("Process terminated cleanly")
                except subprocess.TimeoutExpired:
                    rospy.logwarn(f"Process did not stop within {timeout}s, sending SIGTERM...")

                    # Try SIGTERM
                    os.killpg(pgid, signal.SIGTERM)
                    try:
                        self.process.wait(timeout=2.0)
                        rospy.loginfo("Process terminated with SIGTERM")
                    except subprocess.TimeoutExpired:
                        rospy.logwarn("Process did not respond to SIGTERM, sending SIGKILL...")

                        # Force kill
                        os.killpg(pgid, signal.SIGKILL)
                        self.process.wait(timeout=1.0)
                        rospy.logwarn("Process force killed")

            except ProcessLookupError:
                rospy.loginfo("Process already terminated")
            except Exception as e:
                rospy.logerr(f"Error killing process group: {e}")
                # Fallback to killing just the main process
                try:
                    self.process.terminate()
                    self.process.wait(timeout=2.0)
                except:
                    self.process.kill()

            self.process = None
            rospy.loginfo("Launch process stopped")
            return True

        except Exception as e:
            rospy.logerr(f"Error stopping process: {e}")
            self.process = None
            return False

    def is_running(self):
        """
        Check if process is currently running

        Returns:
            bool: True if running, False otherwise
        """
        if self.process is None:
            return False

        try:
            # Check if process is still alive
            return self.process.poll() is None
        except:
            return False

    def get_status(self):
        """
        Get current status information

        Returns:
            dict: Status information including running state and PID
        """
        if self.process is None:
            return {
                "running": False,
                "pid": None
            }

        try:
            running = self.process.poll() is None
            return {
                "running": running,
                "pid": self.process.pid if running else None,
                "returncode": self.process.returncode
            }
        except:
            return {
                "running": False,
                "pid": None,
                "error": "Failed to get status"
            }

    def __del__(self):
        """Cleanup on object destruction"""
        try:
            self.stop(timeout=2.0)
        except:
            pass


def parse_launch_command(launch_cmd):
    """
    Parse launch command string into components

    Args:
        launch_cmd (str): Command string like "roslaunch cartographer_run slam.launch"

    Returns:
        tuple: (package, launch_file) or (None, None) if parsing fails

    Example:
        package, launch_file = parse_launch_command("roslaunch cartographer_run slam.launch")
        # Returns: ("cartographer_run", "slam.launch")
    """
    try:
        parts = launch_cmd.strip().split()

        # Expected format: "roslaunch <package> <launch_file>"
        if len(parts) >= 3 and parts[0] == "roslaunch":
            package = parts[1]
            launch_file = parts[2]
            return package, launch_file
        else:
            rospy.logerr(f"Invalid launch command format: {launch_cmd}")
            rospy.logerr("Expected: roslaunch <package> <launch_file>")
            return None, None

    except Exception as e:
        rospy.logerr(f"Error parsing launch command '{launch_cmd}': {e}")
        return None, None


# Test code
if __name__ == "__main__":
    """Test the RoslaunchAPIManager"""
    rospy.init_node("test_roslaunch_api_manager")

    manager = RoslaunchAPIManager()

    # Test parsing
    package, launch_file = parse_launch_command("roslaunch cartographer_run slam.launch")
    print(f"Parsed: package={package}, launch_file={launch_file}")

    # Test launch (uncomment when needed)
    # success = manager.launch_file(package, launch_file, [("simulation", "false")])
    # print(f"Launch success: {success}")
    # print(f"Status: {manager.get_status()}")

    # rospy.sleep(5.0)

    # manager.stop()
    # print("Stopped")
