# 4. * Настроить проброс портов локально с порта 80 на порт 8080.

# Сделал наоборот чтобы можно было проверить внешним подключением

iptables -t nat -A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80


alex@alex-E420s:~$ telnet 192.168.1.45 8080
Trying 192.168.1.45...
Connected to 192.168.1.45.
Escape character is '^]'.
aa
HTTP/1.1 400 Bad Request
Server: nginx/1.18.0 (Ubuntu)
Date: Fri, 04 Dec 2020 10:45:47 GMT
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
