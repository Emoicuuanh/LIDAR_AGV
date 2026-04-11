from pymodbus.client.sync import ModbusTcpClient
from pymodbus.exceptions import ModbusException
import rospy
import time
import threading
import sys
import wareshare_modbus
modbus_lock = threading.Lock()

if __name__ == "__main__":
    rospy.init_node("modbus_tcp_publisher", anonymous=False)
    wareshare_ip = rospy.get_param("~wareshare_ip", "192.168.1.200")
    wareshare_port = rospy.get_param("~wareshare_port", 502)
    rospy.loginfo("Connecting to Wareshare: {}:{}".format(wareshare_ip, wareshare_port))
    
    wareshare = ModbusTcpClient(wareshare_ip, wareshare_port)
    is_connected = wareshare.connect()
    
    if is_connected:
        rospy.loginfo("=== KET NOI THANH CONG VOI WARESHARE PLC ===")
    else:
        rospy.logerr("=== LOI: KHONG KET NOI DUOC VOI WARESHARE ===")
        rospy.logerr("Vui long kiem tra lai day mang, dia chi IP, hoac khoi dong lai thiet bi.")
        sys.exit(1)

    rate = rospy.Rate(15)  # 15 Hz
    # Đúng cách gọi: wareshare_modbus.write_output_bit(client, bit_address, value)
    wareshare_modbus.write_output_bit(wareshare, 1, 0)
    wareshare_modbus.write_output_bit(wareshare, 2, 0)
    wareshare_modbus.write_output_bit(wareshare, 3, 0)
    wareshare_modbus.write_output_bit(wareshare, 4, 0)
    wareshare_modbus.write_output_bit(wareshare, 5, 0)
    wareshare_modbus.write_output_bit(wareshare, 6, 0)
    wareshare_modbus.write_output_bit(wareshare, 7, 0)
    wareshare_modbus.write_output_bit(wareshare, 8, 0)
    print(wareshare_modbus.read_input_bit(wareshare, 1))
    time.sleep(2)
    wareshare_modbus.write_output_bit(wareshare, 1, 1)
    rospy.loginfo("bat bit 1")
    time.sleep(5)
    print(wareshare_modbus.read_input_bit(wareshare, 2))
    wareshare_modbus.write_output_bit(wareshare, 1, 0)
    time.sleep(2)
    wareshare_modbus.write_output_bit(wareshare, 2, 1)
    rospy.loginfo("bat bit 2")
    time.sleep(5)
    print(wareshare_modbus.read_input_bit(wareshare, 1))
    wareshare_modbus.write_output_bit(wareshare, 2, 0)
    # wareshare_modbus.write_output_bit(wareshare, 3, 1)
    # rospy.loginfo("bat bit 3")
    # time.sleep(5)
    # wareshare_modbus.write_output_bit(wareshare, 3, 0)
    # wareshare_modbus.write_output_bit(wareshare, 4, 1)
    # rospy.loginfo("bat bit 1")
    # time.sleep(5)
    # wareshare_modbus.write_output_bit(wareshare, 4, 0)
    # wareshare_modbus.write_output_bit(wareshare, 5, 1)
    # rospy.loginfo("bat bit 5")
    # time.sleep(3)
    # wareshare_modbus.write_output_bit(wareshare, 5, 0)
    # wareshare_modbus.write_output_bit(wareshare, 6, 1)
    # rospy.loginfo("bat bit 6")
    # time.sleep(3)
    # wareshare_modbus.write_output_bit(wareshare, 6, 0)
    # wareshare_modbus.write_output_bit(wareshare, 7, 1)
    # rospy.loginfo("bat bit 1")
    # time.sleep(5)
    # wareshare_modbus.write_output_bit(wareshare, 7, 0)
    # wareshare_modbus.write_output_bit(wareshare, 8, 1)
    # rospy.loginfo("bat bit 1")
    # time.sleep(5)
    # wareshare_modbus.write_output_bit(wareshare, 8, 0)
    # print(wareshare_modbus.read_input_bit(wareshare, 4))
# Đóng kết nối khi shutdown
    wareshare.close()
    rospy.loginfo("Modbus TCP connection closed.")
