# 3. Настроить iptables: разрешить подключения только на 22-й и 80-й порты.
alex@alex-VirtualBox:~$ sudo iptables --list
[sudo] пароль для alex:
Chain INPUT (policy ACCEPT)
target     prot opt source               destination

Chain FORWARD (policy ACCEPT)
target     prot opt source               destination

Chain OUTPUT (policy ACCEPT)
target     prot opt source               destination
alex@alex-VirtualBox:~$

iptables -A INPUT  -p tcp -m tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp -m tcp --sport 22 -j ACCEPT

iptables -A INPUT  -p tcp -m tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp -m tcp --sport 80 -j ACCEPT

alex@alex-E420s:~$ telnet 192.168.1.45 22
Trying 192.168.1.45...
Connected to 192.168.1.45.
Escape character is '^]'.
SSH-2.0-OpenSSH_8.3p1 Ubuntu-1
^[[A^[[A^[[B^C
Connection closed by foreign host.

alex@alex-E420s:~$ telnet 192.168.1.45 80
Trying 192.168.1.45...
Connected to 192.168.1.45.
Escape character is '^]'.
sss
HTTP/1.1 400 Bad Request
Server: nginx/1.18.0 (Ubuntu)
Date: Fri, 04 Dec 2020 10:30:55 GMT
Content-Type: text/html
Content-Length: 166
Connection: close

<html>
<head><title>400 Bad Request</title></head>
<body>
<center><h1>400 Bad Request</h1></center>
<hr><center>nginx/1.18.0 (Ubuntu)</center>
</body>
</html>
Connection closed by foreign host.


