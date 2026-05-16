from pymodbus.client.sync import ModbusTcpClient
from pymodbus.exceptions import ModbusException
import rospy
import time
import threading

# --- CẤU HÌNH THÔNG SỐ ---
PLC_IP = '192.86.11.191'  # IP của PLC
PLC_PORT = 5000
UNIT_ID = 1

# Global client
client = None
modbus_lock = threading.Lock()


def connect(plc_ip=PLC_IP, plc_port=PLC_PORT):
    """
    Kết nối đến PLC Modbus
    
    Args:
        plc_ip: IP address của PLC (default: 192.168.1.250)
        plc_port: Port của PLC (default: 502)
        
    Returns:
        True nếu kết nối thành công, False nếu lỗi
    """
    global client
    
    try:
        print(f"Đang kết nối đến PLC: {plc_ip}:{plc_port}...")
        client = ModbusTcpClient(plc_ip, port=plc_port)
        
        if client.connect():
            print(f"✓ Đã kết nối thành công đến PLC {plc_ip}:{plc_port}")
            return True
        else:
            print(f"✗ Không thể kết nối đến PLC {plc_ip}:{plc_port}")
            return False
            
    except Exception as e:
        print(f"✗ Lỗi khi kết nối: {e}")
        return False


def disconnect():
    """Ngắt kết nối với PLC"""
    global client
    if client:
        client.close()
        print("✓ Đã ngắt kết nối với PLC")


def is_connected():
    """Kiểm tra trạng thái kết nối"""
    global client
    return client is not None and client.is_socket_open()

def log(slave_id, msg_type, message):
    """Simple logging function"""
    rospy.loginfo(f"[Slave {slave_id}] {msg_type}: {message}")

def write_slave(slave_id, start_addr, values):
    global modbus_lock
    max_retries = 10  # Thử lại tối đa 3 lần nếu lỗi
    
    for attempt in range(max_retries):
        try:
            with modbus_lock:
                response = client.write_registers(start_addr, values, unit=slave_id)
            if response.isError():
                rospy.logwarn(f"[Slave {slave_id}] Write attempt {attempt+1} failed: {response}")
                continue # Thử lại vòng lặp kế tiếp
            else:
                return True
        except Exception as e:
            rospy.logwarn(f"[Slave {slave_id}] Write Exception attempt {attempt+1}: {e}")
    log(slave_id, "WRITE_ERROR", f"Failed after {max_retries} retries")
    print(f"\033[91m[Slave {slave_id}] WRITE FAILED after retries\033[0m")
    return False

# ================== ĐỌC MODBUS ==================
def read_slave(slave_id, start_addr, count):
    global modbus_lock
    try:
        t0 = time.time()
        with modbus_lock:
            response = client.read_input_registers(start_addr, count, unit=slave_id)
        elapsed = time.time() - t0

        if response.isError():
            print(f"\033[91m[Slave {slave_id}] LỖI: {response}\033[0m")
            log(slave_id, "ERROR", str(response))
            return None, elapsed
        else:
            return response.registers
    except ModbusException as e:
        print(f"\033[91m[Slave {slave_id}] ModbusException: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
    except Exception as e:
        print(f"\033[91m[Slave {slave_id}] Lỗi: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
        
def read_slave_2():
    global modbus_lock
    try:
        t0 = time.time()
        with modbus_lock:
            response = client.read_holding_registers(6, 1, 1)
        elapsed = time.time() - t0

        if response.isError():
            print(f"\033[91m[Slave {slave_id}] LỖI: {response}\033[0m")
            log(slave_id, "ERROR", str(response))
            return None, elapsed
        else:
            return response.registers
    except ModbusException as e:
        print(f"\033[91m[Slave {slave_id}] ModbusException: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
    except Exception as e:
        print(f"\033[91m[Slave {slave_id}] Lỗi: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
        
def read_slave_3(slave_id, start_addr, count):
    global modbus_lock
    try:
        t0 = time.time()
        with modbus_lock:
            response = client.read_holding_registers(start_addr, count, unit=slave_id)
        elapsed = time.time() - t0

        if response.isError():
            print(f"\033[91m[Slave {slave_id}] LỖI: {response}\033[0m")
            log(slave_id, "ERROR", str(response))
            return None, elapsed
        else:
            return response.registers
    except ModbusException as e:
        print(f"\033[91m[Slave {slave_id}] ModbusException: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
    except Exception as e:
        print(f"\033[91m[Slave {slave_id}] Lỗi: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
