# 5. * Создать группу developer и нескольких пользователей, входящих в неё.
# Создать директорию для совместной работы.
# Сделать так, чтобы созданные одними пользователями файлы могли изменять другие пользователи этой группы.

vagrant@homestead:~$ sudo useradd receptionist1
vagrant@homestead:~$ sudo useradd receptionist2
vagrant@homestead:~$ sudo useradd receptionist3
vagrant@homestead:~$ sudo groupadd reseption
vagrant@homestead:~$ sudo usermod -aG reseption receptionist1
vagrant@homestead:~$ sudo usermod -aG reseption receptionist2
vagrant@homestead:~$ sudo usermod -aG reseption receptionist3
vagrant@homestead:~$ sudo cat /etc/gshadow
receptionist1:!::
receptionist2:!::
receptionist3:!::
reseption:!::receptionist1,receptionist2,receptionist3

vagrant@homestead:~/gb_linux$ mkdir desk
vagrant@homestead:~/gb_linux$ ls -al
vagrant@homestead:~/gb_linux$ sudo chgrp reseption desk/
vagrant@homestead:~/gb_linux$ sudo chmod g+s desk/
vagrant@homestead:~/gb_linux$ ls -al
total 12
drwxrwxr-x  3 vagrant vagrant   4096 Nov 27 16:45 .
drwxr-xr-x 18 vagrant vagrant   4096 Nov 26 20:19 ..
drwxrwsr-x  2 vagrant reseption 4096 Nov 27 16:45 desk
vagrant@homestead:~/gb_linux$ cd desk/
vagrant@homestead:~/gb_linux/desk$ touch booking1
vagrant@homestead:~/gb_linux/desk$ touch booking2
vagrant@homestead:~/gb_linux/desk$ touch booking3
vagrant@homestead:~/gb_linux/desk$ touch booking4
vagrant@homestead:~/gb_linux/desk$ ls -al
total 8
drwxrwsr-x 2 vagrant reseption 4096 Nov 27 16:51 .
drwxrwxr-x 3 vagrant vagrant   4096 Nov 27 16:45 ..
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking1
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking2
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking3
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking4
vagrant@homestead:~/gb_linux/desk$