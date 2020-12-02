# 5. Создать разовое задание на перезагрузку операционной системы, используя at.
vagrant@homestead:~$ echo "sudo reboot -f" | at now + 1min
warning: commands will be executed using /bin/sh
job 5 at Wed Dec  2 11:17:00 2020
vagrant@homestead:~$ atq
5	Wed Dec  2 11:17:00 2020 a vagrant
vagrant@homestead:~$ date
Wed Dec  2 11:16:55 UTC 2020
vagrant@homestead:~$ date
Wed Dec  2 11:17:00 UTC 2020
vagrant@homestead:~$ Connection to 127.0.0.1 closed by remote host.
Connection to 127.0.0.1 closed.
