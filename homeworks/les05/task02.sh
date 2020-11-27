# 2. Дать созданным файлам другие, произвольные имена. Создать новую символическую ссылку.
# Переместить ссылки в другую директорию.

vagrant@homestead:~/gb_linux/1$ mv file2 file22
vagrant@homestead:~/gb_linux/1$ mv file3 file33
vagrant@homestead:~/gb_linux/1$ mv file4 file44
vagrant@homestead:~/gb_linux/1$ ls -al
total 16
drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 13:47 .
drwxrwxr-x 3 vagrant vagrant 4096 Nov 27 11:55 ..
-rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:58 file22
lrwxrwxrwx 1 vagrant vagrant    5 Nov 27 12:07 file33 -> file1
-rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:57 file44
vagrant@homestead:~/gb_linux/1$ ln -s file22 file5
vagrant@homestead:~/gb_linux/1$ ls -al
total 16
drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 13:49 .
drwxrwxr-x 3 vagrant vagrant 4096 Nov 27 11:55 ..
-rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:58 file22
lrwxrwxrwx 1 vagrant vagrant    5 Nov 27 12:07 file33 -> file1
-rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:57 file44
lrwxrwxrwx 1 vagrant vagrant    6 Nov 27 13:49 file5 -> file22
vagrant@homestead:~/gb_linux/1$

vagrant@homestead:~/gb_linux/1$ cd ..
vagrant@homestead:~/gb_linux$ mkdir 2
vagrant@homestead:~/gb_linux$ cd 1
vagrant@homestead:~/gb_linux/1$ ls -al
vagrant@homestead:~/gb_linux/1$ mv file33 ../2
vagrant@homestead:~/gb_linux/1$ mv file44 ../2
vagrant@homestead:~/gb_linux/1$ mv file5 ../2
vagrant@homestead:~/gb_linux/1$
vagrant@homestead:~/gb_linux/1$ cd ../2
vagrant@homestead:~/gb_linux/2$ ls -al
total 12
drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 13:51 .
drwxrwxr-x 4 vagrant vagrant 4096 Nov 27 13:50 ..
lrwxrwxrwx 1 vagrant vagrant    5 Nov 27 12:07 file33 -> file1
-rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:57 file44
lrwxrwxrwx 1 vagrant vagrant    6 Nov 27 13:49 file5 -> file22
 # ссылки не работают

 vagrant@homestead:~/gb_linux/1$ ln -s /home/vagrant/gb_linux/1/file22 file6
vagrant@homestead:~/gb_linux/1$ ls -al
total 12
drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 15:28 .
drwxrwxr-x 5 vagrant vagrant 4096 Nov 27 15:27 ..
-rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:58 file22
lrwxrwxrwx 1 vagrant vagrant   31 Nov 27 15:28 file6 -> /home/vagrant/gb_linux/1/file22
vagrant@homestead:~/gb_linux/1$ mv file6 ../3
vagrant@homestead:~/gb_linux/1$ cd ../3
vagrant@homestead:~/gb_linux/3$ ls -al
total 8
drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 15:29 .
drwxrwxr-x 5 vagrant vagrant 4096 Nov 27 15:27 ..
lrwxrwxrwx 1 vagrant vagrant   31 Nov 27 15:28 file6 -> /home/vagrant/gb_linux/1/file22
vagrant@homestead:~/gb_linux/3$ cat file6
General intelligence involves the ability to achieve a variety of goals, and carry out a variety
of tasks, in a variety of different contexts and environments.
vagrant@homestead:~/gb_linux/3$

# если использовать абсолютный путь то файлы при перемещении ссылок остаются доступными