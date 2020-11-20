# 2. Управление файлами и каталогами и текстовые редакторы.
# Создать файл с наполнением, используя несколько способов.
# Использовать разобранные текстовые редакторы для наполнения файлов данными.
# Создать копии созданных файлов, создать несколько каталогов с подкаталогами,
# перенести несколько файлов в созданные каталоги.
# Перечислить команды и используемые параметры команд.
vagrant@homestead:~/gb_linux$ echo "hello world!" > t1.txt # вывести текст в  файл
vagrant@homestead:~/gb_linux$ ls
t1.txt  t.txt
vagrant@homestead:~/gb_linux$ cat t1.txt
hello world!
vagrant@homestead:~/gb_linux$ echo "hello linux!" >> t1.txt # вывести текст в конец файла
vagrant@homestead:~/gb_linux$ cat t1.txt
hello world!
hello linux!
vagrant@homestead:~/gb_linux$ cat t1.txt > t2.txt # скопировать содержимое файла
vagrant@homestead:~/gb_linux$ cat t2.txt
hello world!
hello linux!
vagrant@homestead:~/gb_linux$ vi t2.txt
vagrant@homestead:~/gb_linux$ cat t2.txt
hello world!
hello linux!
;;l;l;

sdfdfdf
ddfdf

Matrix!
vagrant@homestead:~/gb_linux$ nano t2.txt
vagrant@homestead:~/gb_linux$ cat t2.txt
hello world!
hello linux!
;;l;l;

sdfdfdf
ddfdf

Matrix!

Welcome to system!
vagrant@homestead:~/gb_linux$

vagrant@homestead:~/gb_linux$ ls -al
total 20
drwxrwxr-x  2 vagrant vagrant 4096 Nov 20 14:38 .
drwxr-xr-x 18 vagrant vagrant 4096 Nov 20 14:37 ..
-rw-rw-r--  1 vagrant vagrant   26 Nov 20 14:22 t1.txt
-rw-rw-r--  1 vagrant vagrant   77 Nov 20 14:38 t2.txt
-rw-rw-r--  1 vagrant vagrant    9 Nov 20 14:39 t.txt
vagrant@homestead:~/gb_linux$ mkdir t
vagrant@homestead:~/gb_linux$ mkdir t1
vagrant@homestead:~/gb_linux$ mkdir t2
vagrant@homestead:~/gb_linux$ cp t.txt t
vagrant@homestead:~/gb_linux$ cp t1.txt t1
vagrant@homestead:~/gb_linux$ cp t2.txt t2
vagrant@homestead:~/gb_linux$ ls -al
total 32
drwxrwxr-x  5 vagrant vagrant 4096 Nov 20 14:42 .
drwxr-xr-x 18 vagrant vagrant 4096 Nov 20 14:37 ..
drwxrwxr-x  2 vagrant vagrant 4096 Nov 20 14:43 t
drwxrwxr-x  2 vagrant vagrant 4096 Nov 20 14:43 t1
-rw-rw-r--  1 vagrant vagrant   26 Nov 20 14:22 t1.txt
drwxrwxr-x  2 vagrant vagrant 4096 Nov 20 14:43 t2
-rw-rw-r--  1 vagrant vagrant   77 Nov 20 14:38 t2.txt
-rw-rw-r--  1 vagrant vagrant    9 Nov 20 14:39 t.txt
vagrant@homestead:~/gb_linux$ ls t1
t1.txt
vagrant@homestead:~/gb_linux$ cp -rf t t1
vagrant@homestead:~/gb_linux$ ls -al t1
total 16
drwxrwxr-x 3 vagrant vagrant 4096 Nov 20 14:47 .
drwxrwxr-x 5 vagrant vagrant 4096 Nov 20 14:42 ..
drwxrwxr-x 2 vagrant vagrant 4096 Nov 20 14:47 t
-rw-rw-r-- 1 vagrant vagrant   26 Nov 20 14:43 t1.txt
vagrant@homestead:~/gb_linux$ ls -al t1/t
total 12
drwxrwxr-x 2 vagrant vagrant 4096 Nov 20 14:47 .
drwxrwxr-x 3 vagrant vagrant 4096 Nov 20 14:47 ..
-rw-rw-r-- 1 vagrant vagrant    9 Nov 20 14:47 t.txt
vagrant@homestead:~/gb_linux$
