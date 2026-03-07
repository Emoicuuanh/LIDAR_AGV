from pymodbus.client.sync import ModbusTcpClient
from pymodbus.exceptions import ModbusException
import rospy
import time
import threading
import wareshare_modbus
modbus_lock = threading.Lock()

def log(slave_id, msg_type, message):
    """Simple logging function"""
    rospy.loginfo(f"[Slave {slave_id}] {msg_type}: {message}")

def write_slave(slave_id, start_addr, values):
    global modbus_lock
    max_retries = 3  # Thử lại tối đa 3 lần nếu lỗi
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
    # Nếu hết 3 lần vẫn lỗi thì mới log lỗi và trả về False
    log(slave_id, "WRITE_ERROR", f"Failed after {max_retries} retries")
    print(f"\033[91m[Slave {slave_id}] WRITE FAILED after retries\033[0m")
    return False

# ================== ĐỌC MODBUS ==================
def read_slave(slave_id, start_addr=65, count=64):
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
            return response.registers, elapsed
    except ModbusException as e:
        print(f"\033[91m[Slave {slave_id}] ModbusException: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
    except Exception as e:
        print(f"\033[91m[Slave {slave_id}] Lỗi: {e}\033[0m")
        log(slave_id, "ERROR", str(e))
        return None, 0.0
    
if __name__ == "__main__":
    rospy.init_node("modbus_tcp_publisher", anonymous=False)
    wareshare_ip = rospy.get_param("~wareshare_ip", "192.168.1.200")
    wareshare_port = rospy.get_param("~wareshare_port", 502)
    rospy.loginfo("Connecting to Wareshare: {}:{}".format(wareshare_ip, wareshare_port))
    wareshare = ModbusTcpClient(wareshare_ip, wareshare_port)
    wareshare.connect()
    
    rate = rospy.Rate(15)  # 15 Hz
    while not rospy.is_shutdown():
        # Đúng cách gọi: wareshare_modbus.write_output_bit(client, bit_address, value)
        wareshare_modbus.write_output_bit(wareshare, 1, 1)        
        rate.sleep()
        wareshare_modbus.write_output_bit(wareshare, 1, 0)        
        rate.sleep()
    # Đóng kết nối khi shutdown
    wareshare.close()
    rospy.loginfo("Modbus TCP connection closed.")
