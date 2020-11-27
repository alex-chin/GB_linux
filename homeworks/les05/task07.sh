# 7. * Создать директорию, в которой есть несколько файлов. Сделать так, чтобы открыть файлы можно было,
# только зная имя файла, а через ls список файлов посмотреть было нельзя.

vagrant@homestead:~/gb_linux/desk$ mkdir black_box
vagrant@homestead:~/gb_linux/desk$ chmod 771 black_box
vagrant@homestead:~/gb_linux/desk$ ls -al
total 16
drwxrwsr-x 4 vagrant reseption 4096 Nov 27 17:14 .
drwxrwxr-x 3 vagrant vagrant   4096 Nov 27 16:45 ..
drwxrwx--x 2 vagrant reseption 4096 Nov 27 17:17 black_box
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking1
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking2
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking3
-rw-rw-r-- 1 vagrant reseption    0 Nov 27 16:51 booking4
drwxrwxr-t 2 vagrant reseption 4096 Nov 27 17:01 trash
sidekick@homestead:/home/vagrant/gb_linux/desk$ ls -al black_box/
ls: cannot open directory 'black_box/': Permission denied
sidekick@homestead:/home/vagrant/gb_linux/desk$ ls -al black_box/secret1
-rw-rw-rw- 1 vagrant vagrant 0 Nov 27 17:17 black_box/secret1
sidekick@homestead:/home/vagrant/gb_linux/desk$ cat black_box/secret1
code1
