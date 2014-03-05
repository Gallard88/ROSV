#!/usr/bin/python
import socket
print("Creating camera link")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(("192.168.4.200",8090))
my_ip = s.getsockname()[0]
print(my_ip)
msg = '{"Module":"Camera", "RecordType":"Start", "IP":"'
msg += my_ip
msg += '" }\n'
s.send(msg)
s.close()
