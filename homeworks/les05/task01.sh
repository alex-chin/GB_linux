# 1. Создать файл file1 и наполнить его произвольным содержимым. Скопировать его в file2.
# Создать символическую ссылку file3 на file1. Создать жёсткую ссылку file4 на file1.
# Посмотреть, какие inode у файлов. Удалить file1. Что стало с остальными созданными файлами?
# Попробовать вывести их на экран.

vagrant@homestead:~/gb_linux/1$ cat > file1
General intelligence involves the ability to achieve a variety of goals, and carry out a variety
of tasks, in a variety of different contexts and environments.
vagrant@homestead:~/gb_linux/1$ ls
file1
vagrant@homestead:~/gb_linux/1$ cat file1
General intelligence involves the ability to achieve a variety of goals, and carry out a variety
of tasks, in a variety of different contexts and environments.
vagrant@homestead:~/gb_linux/1$ cp file1 file2

vagrant@homestead:~/gb_linux/1$ ln -s file1 file3
vagrant@homestead:~/gb_linux/1$ ln file1 file4
vagrant@homestead:~/gb_linux/1$ ls -ial
total 20
708752 drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 12:07 .
653658 drwxrwxr-x 3 vagrant vagrant 4096 Nov 27 11:55 ..
708753 -rw-rw-r-- 2 vagrant vagrant  160 Nov 27 11:57 file1
708754 -rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:58 file2
708755 lrwxrwxrwx 1 vagrant vagrant    5 Nov 27 12:07 file3 -> file1
708753 -rw-rw-r-- 2 vagrant vagrant  160 Nov 27 11:57 file4
vagrant@homestead:~/gb_linux/1$

# inode у file1 (708753) и символической ссылки file3(708755) разные.
# inode у file1 (708753) и жесткой ссылки file4(708753) одинаковые.

vagrant@homestead:~/gb_linux/1$ rm file1
vagrant@homestead:~/gb_linux/1$ ls -ial
total 16
708752 drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 12:35 .
653658 drwxrwxr-x 3 vagrant vagrant 4096 Nov 27 11:55 ..
708754 -rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:58 file2
708755 lrwxrwxrwx 1 vagrant vagrant    5 Nov 27 12:07 file3 -> file1
708753 -rw-rw-r-- 1 vagrant vagrant  160 Nov 27 11:57 file4
vagrant@homestead:~/gb_linux/1$ cat file4
General intelligence involves the ability to achieve a variety of goals, and carry out a variety
of tasks, in a variety of different contexts and environments.
vagrant@homestead:~/gb_linux/1$ cat file3
cat: file3: No such file or directory
vagrant@homestead:~/gb_linux/1$

# при удалении file1 символическая ссылка не работает file3 , однако по жесткой ссылке file4 файл удается прочитать
