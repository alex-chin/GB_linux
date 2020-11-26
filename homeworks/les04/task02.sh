# 2. Конвейер (pipeline). Использовать команду cut на вывод длинного списка каталога,
# чтобы отобразить только права доступа к файлам. Затем отправить в конвейере этот вывод
# на sort и uniq, чтобы отфильтровать все повторяющиеся строки.

vagrant@homestead:~/gb_linux$ ls /etc -al | cut -b -10 | sort | uniq
drwxrwxr-x
drwxr-xr-x
lrwxrwxrwx
-r--r-----
-r--r--r--
-rw-------
-rw-r-----
-rw-r--r--
-rwxr-xr-x
total 980

