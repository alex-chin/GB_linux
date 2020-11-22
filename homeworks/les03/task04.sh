# 4. * Используя дополнительные материалы, выдать одному из созданных пользователей право
# на выполнение ряда команд, требующих прав суперпользователя
# (команды выбираем на своё усмотрение).

alex@alex-E420s:~$ sudo useradd user1
alex@alex-E420s:~$ sudo passwd user1
Новый пароль :
Повторите ввод нового пароля :
passwd: пароль успешно обновлён
alex@alex-E420s:~$ sudo sudoedit /etc/sudoers

alex@alex-E420s:~$ sudo tail /etc/sudoers
 Allow members of group sudo to execute any command
%sudo	ALL=(ALL:ALL) ALL

# See sudoers(5) for more information on "#include" directives:

#includedir /etc/sudoers.d

user1 ALL=(ALL) /usr/sbin/useradd

alex@alex-E420s:~$ su user1
Пароль:
$ sudo useradd user2
$ sudo userdel user2
Пользователю user1 запрещено выполнять '/usr/sbin/userdel user2' с правами root на alex-E420s.
$



