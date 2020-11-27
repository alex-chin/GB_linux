# 3. Создать два произвольных файла. Первому присвоить права на чтение и запись для владельца и группы,
# только на чтение — для всех. Второму присвоить права на чтение и запись только для владельца.
# Сделать это в численном и символьном виде.


vagrant@homestead:~/gb_linux/t3$ touch memo.txt
vagrant@homestead:~/gb_linux/t3$ touch note.txt
vagrant@homestead:~/gb_linux/t3$ ls -al
total 8
drwxrwxr-x 2 vagrant vagrant 4096 Nov 27 15:36 .
drwxrwxr-x 6 vagrant vagrant 4096 Nov 27 15:35 ..
-rw-rw-r-- 1 vagrant vagrant    0 Nov 27 15:35 memo.txt
-rw-rw-r-- 1 vagrant vagrant    0 Nov 27 15:36 note.txt

vagrant@homestead:~/gb_linux/t3$ chmod 0 note.txt
vagrant@homestead:~/gb_linux/t3$ ls -al note.txt
---------- 1 vagrant vagrant    0 Nov 27 15:36 note.txt

vagrant@homestead:~/gb_linux/t3$ chmod ug+wr  note.txt
vagrant@homestead:~/gb_linux/t3$ chmod o+r  note.txt
vagrant@homestead:~/gb_linux/t3$ ls -al note.txt
-rw-rw-r-- 1 vagrant vagrant    0 Nov 27 15:36 note.txt

vagrant@homestead:~/gb_linux/t3$ chmod 0 note.txt
vagrant@homestead:~/gb_linux/t3$ ls -al note.txt
---------- 1 vagrant vagrant 0 Nov 27 15:36 note.txt

vagrant@homestead:~/gb_linux/t3$ chmod 664 note.txt
vagrant@homestead:~/gb_linux/t3$ ls -al note.txt
-rw-rw-r-- 1 vagrant vagrant 0 Nov 27 15:36 note.txt

vagrant@homestead:~/gb_linux/t3$ ls -al memo.txt
-rw-rw-r-- 1 vagrant vagrant 0 Nov 27 15:35 memo.txt

vagrant@homestead:~/gb_linux/t3$ chmod 0 memo.txt
vagrant@homestead:~/gb_linux/t3$ ls -al memo.txt
---------- 1 vagrant vagrant 0 Nov 27 15:35 memo.txt

vagrant@homestead:~/gb_linux/t3$ chmod u+wr memo.txt
vagrant@homestead:~/gb_linux/t3$ ls -al memo.txt
-rw------- 1 vagrant vagrant 0 Nov 27 15:35 memo.txt

vagrant@homestead:~/gb_linux/t3$ chmod 0 memo.txt
vagrant@homestead:~/gb_linux/t3$ ls -al memo.txt
---------- 1 vagrant vagrant 0 Nov 27 15:35 memo.txt

vagrant@homestead:~/gb_linux/t3$ chmod 600  memo.txt
vagrant@homestead:~/gb_linux/t3$ ls -al memo.txt
-rw------- 1 vagrant vagrant 0 Nov 27 15:35 memo.txt

