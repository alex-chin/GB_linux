# 6. * Написать скрипт, делающий архивную копию каталога etc,
# и прописать задание в crontab.

vagrant@homestead:~/gb_linux$ sudo tar -czf etc.tgz /etc

vagrant@homestead:~/gb_linux$ crontab -l
# m h  dom mon dow   command
0 5 * * 1 sudo tar -czf /var/backups/etc.tgz /etc
vagrant@homestead:~/gb_linux$