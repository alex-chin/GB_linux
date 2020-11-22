# 3. Создать пользователя с правами суперпользователя.
# Сделать так, чтобы sudo не требовал пароль для выполнения команд.
alex@alex-E420s:~$ sudo usermod -aG sudo user1
alex@alex-E420s:~$ sudo passwd user1
Новый пароль :
Повторите ввод нового пароля :
passwd: пароль успешно обновлён
alex@alex-E420s:~$ su user1
Пароль:

alex@alex-E420s:~$ sudo tail /etc/sudoers
%admin ALL=(ALL) ALL

# Allow members of group sudo to execute any command
%sudo	ALL=(ALL:ALL) ALL

# See sudoers(5) for more information on "#include" directives:

#includedir /etc/sudoers.d

user1 ALL=(ALL) NOPASSWD:ALL

alex@alex-E420s:~$ su user1
Пароль:
$ sudo cat /etc/shadow
root:!:18470:0:99999:7:::
daemon:*:18375:0:99999:7:::

