# 1. Потоки ввода/вывода. Создать файл, используя команду echo.
# Используя команду cat, прочитать содержимое каталога etc,
# ошибки перенаправить в отдельный файл.

vagrant@homestead:~/gb_linux$ echo "Hello world!" > welcome.txt
vagrant@homestead:~/gb_linux$ ls -al
total 12
drwxrwxr-x  2 vagrant vagrant 4096 Nov 26 19:51 .
drwxr-xr-x 18 vagrant vagrant 4096 Nov 20 14:37 ..
-rw-rw-r--  1 vagrant vagrant   13 Nov 26 19:51 welcome.txt
vagrant@homestead:~/gb_linux$ cat welcome.txt
Hello world!
vagrant@homestead:~/gb_linux$

vagrant@homestead:~/gb_linux$ cat /etc/* 2> cat.err
vagrant@homestead:~/gb_linux$ ls -al
total 20
drwxrwxr-x  2 vagrant vagrant 4096 Nov 26 19:52 .
drwxr-xr-x 18 vagrant vagrant 4096 Nov 20 14:37 ..
-rw-rw-r--  1 vagrant vagrant 4169 Nov 26 19:52 cat.err
-rw-rw-r--  1 vagrant vagrant   13 Nov 26 19:51 welcome.txt
vagrant@homestead:~/gb_linux$ head cat.err
cat: /etc/acpi: Is a directory
cat: /etc/alternatives: Is a directory
cat: /etc/apache2: Is a directory
cat: /etc/apm: Is a directory
cat: /etc/apparmor: Is a directory
cat: /etc/apparmor.d: Is a directory
cat: /etc/apport: Is a directory
cat: /etc/apt: Is a directory
cat: /etc/at.deny: Permission denied
cat: /etc/avahi: Is a directory