# 2. Управление группами:
# a) создать группу с использованием утилит и в ручном режиме;
# b) попрактиковаться в смене групп у пользователей;
# c) добавить пользователя в группу, не меняя основной;
# d) удалить пользователя из группы.
alex@alex-E420s:~$ sudo groupadd team1
alex@alex-E420s:~$ sudo groupadd team2
alex@alex-E420s:~$ sudo groupadd team3
alex@alex-E420s:~$ sudo tail /etc/gshadow
user1:!::
user2:!::
user3:!::
team1:!::
team2:!::
team3:!::
alex@alex-E420s:~$ sudo usermod -aG team1 user1
alex@alex-E420s:~$ sudo usermod -aG team2 user2
alex@alex-E420s:~$ sudo usermod -aG team3 user3
alex@alex-E420s:~$ sudo tail /etc/gshadow
user1:!::
user2:!::
user3:!::
team1:!::user1
team2:!::user2
team3:!::user3
alex@alex-E420s:~$ sudo usermod -aG team1 user2
alex@alex-E420s:~$ sudo usermod -aG team1 user3
alex@alex-E420s:~$ sudo tail /etc/gshadow
team1:!::user1,user2,user3
team2:!::user2
team3:!::user3
alex@alex-E420s:~$ sudo usermod -G user3 user3
alex@alex-E420s:~$ sudo tail /etc/gshadow
user1:!::
user2:!::
user3:!::user3
team1:!::user1,user2
team2:!::user2
team3:!::
alex@alex-E420s:~$
