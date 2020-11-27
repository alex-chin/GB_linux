# 6. * Создать в директории для совместной работы поддиректорию для обмена файлами,
# но чтобы удалять файлы могли только их создатели.
vagrant@homestead:~/gb_linux/desk$ mkdir trash
vagrant@homestead:~/gb_linux/desk$ chmod +t trash/
vagrant@homestead:~/gb_linux/desk$ ls -al
total 12
drwxrwsr-x 3 vagrant reseption 4096 Nov 27 17:01 .
drwxrwxr-x 3 vagrant vagrant   4096 Nov 27 16:45 ..
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking1
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking2
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking3
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking4
drwxrwxr-t 2 vagrant reseption 4096 Nov 27 17:01 trash
vagrant@homestead:~/gb_linux/desk$