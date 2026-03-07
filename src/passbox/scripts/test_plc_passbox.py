import modbus_tcp_passbox
import time

if __name__ == "__main__":
    modbus_tcp_passbox.connect()
    while True:
        print(modbus_tcp_passbox.read_slave(1,2500,1)[0])
        time.sleep(1)
        # modbus_tcp_passbox.write_slave(1,1000,3)
        # time.sleep(1)