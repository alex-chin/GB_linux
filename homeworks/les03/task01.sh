# 1. Управление пользователями:
# a) создать пользователя, используя утилиту useradd;
# b) удалить пользователя, используя утилиту userdel;
# c) создать пользователя в ручном режиме.

alex@alex-E420s:~$ useradd -D
GROUP=100
HOME=/home
INACTIVE=-1
EXPIRE=
SHELL=/bin/sh
SKEL=/etc/skel
CREATE_MAIL_SPOOL=no
alex@alex-E420s:~$ sudo useradd user1
alex@alex-E420s:~$ sudo useradd user2
alex@alex-E420s:~$ sudo tail /etc/shadow
user1:!:18584:0:99999:7:::
user2:!:18588:0:99999:7:::

alex@alex-E420s:~$ sudo userdel -r user1
userdel: почтовый ящик user1 (/var/mail/user1) не найден
alex@alex-E420s:~$ sudo userdel -r user2
userdel: почтовый ящик user2 (/var/mail/user2) не найден
userdel: домашний каталог пользователя user2 (/home/user2) не найден
alex@alex-E420s:~$ sudo tail /etc/shadow
