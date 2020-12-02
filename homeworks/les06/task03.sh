# 3. * Использовать команду AWK на вывод длинного списка каталога, чтобы отобразить только права доступа к файлам.
# Затем отправить в конвейере этот вывод на sort и uniq, чтобы отфильтровать все повторяющиеся строки.
vagrant@homestead:~/gb_linux$ ls -al /etc/ | awk '{print $1}' | sort | uniq
drwxrwxr-x
drwxr-xr-x
lrwxrwxrwx
-r--r-----
-r--r--r--
-rw-------
-rw-r-----
-rw-r--r--
-rwxr-xr-x
total
vagrant@homestead:~/gb_linux$
