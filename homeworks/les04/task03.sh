# 3. Управление процессами.) Изменить конфигурационный файл службы SSH: /etc/ssh/sshd_config,
# отключив аутентификацию по паролю PasswordAuthentication no.
# Выполните рестарт службы systemctl restart sshd (service sshd restart),
# верните аутентификацию по паролю, выполните reload службы systemctl reload sshd
# (services sshd reload). В чём различие между действиями restart и reload?

# ответ: команда reload дает сигнал процессу произвести "мягкую" перезагрузку - в общем случае
# провести чтение файла конфигурации без остановки сессий

# Создайте файл при помощи команды cat > file_name, напишите текст и завершите комбинацией ctrl+d.
# Какой сигнал передадим процессу?


vagrant@homestead:~/gb_linux$ sudo vi /etc/ssh/sshd_config
vagrant@homestead:~/gb_linux$ cat /etc/ssh/sshd_config | grep PasswordAuthentication
PasswordAuthentication no
vagrant@homestead:~/gb_linux$ systemctl status ssh
● ssh.service - OpenBSD Secure Shell server
   Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
   Active: active (running) since Thu 2020-11-26 19:46:34 UTC; 28min ago
  Process: 939 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
 Main PID: 972 (sshd)
    Tasks: 1 (limit: 2318)
   CGroup: /system.slice/ssh.service
           └─972 /usr/sbin/sshd -D

Nov 26 19:46:34 homestead systemd[1]: Starting OpenBSD Secure Shell server...
Nov 26 19:46:34 homestead sshd[972]: Server listening on 0.0.0.0 port 22.
Nov 26 19:46:34 homestead sshd[972]: Server listening on :: port 22.
Nov 26 19:46:34 homestead systemd[1]: Started OpenBSD Secure Shell server.

vagrant@homestead:~/gb_linux$ sudo systemctl restart ssh
vagrant@homestead:~/gb_linux$ systemctl status ssh
● ssh.service - OpenBSD Secure Shell server
   Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
   Active: active (running) since Thu 2020-11-26 20:17:25 UTC; 9s ago
  Process: 2768 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
 Main PID: 2778 (sshd)
    Tasks: 1 (limit: 2318)
   CGroup: /system.slice/ssh.service
           └─2778 /usr/sbin/sshd -D

Nov 26 20:17:25 homestead systemd[1]: Starting OpenBSD Secure Shell server...
Nov 26 20:17:25 homestead sshd[2778]: Server listening on 0.0.0.0 port 22.
Nov 26 20:17:25 homestead sshd[2778]: Server listening on :: port 22.
Nov 26 20:17:25 homestead systemd[1]: Started OpenBSD Secure Shell server.

vagrant@homestead:~/gb_linux$ sudo vi /etc/ssh/sshd_config
vagrant@homestead:~/gb_linux$ cat /etc/ssh/sshd_config | grep PasswordAuthentication
PasswordAuthentication yes
# PasswordAuthentication.  Depending on your PAM configuration,
# PAM authentication, then enable this but set PasswordAuthentication
vagrant@homestead:~/gb_linux$ sudo systemctl reload ssh
vagrant@homestead:~/gb_linux$ systemctl status ssh
● ssh.service - OpenBSD Secure Shell server
   Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
   Active: active (running) since Thu 2020-11-26 20:17:25 UTC; 2min 4s ago
  Process: 2794 ExecReload=/bin/kill -HUP $MAINPID (code=exited, status=0/SUCCESS)
  Process: 2793 ExecReload=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
  Process: 2768 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
 Main PID: 2778 (sshd)
    Tasks: 1 (limit: 2318)
   CGroup: /system.slice/ssh.service
           └─2778 /usr/sbin/sshd -D

Nov 26 20:17:25 homestead systemd[1]: Starting OpenBSD Secure Shell server...
Nov 26 20:17:25 homestead sshd[2778]: Server listening on 0.0.0.0 port 22.
Nov 26 20:17:25 homestead sshd[2778]: Server listening on :: port 22.
Nov 26 20:17:25 homestead systemd[1]: Started OpenBSD Secure Shell server.
Nov 26 20:19:23 homestead systemd[1]: Reloading OpenBSD Secure Shell server.
Nov 26 20:19:23 homestead sshd[2778]: Received SIGHUP; restarting.
Nov 26 20:19:23 homestead systemd[1]: Reloaded OpenBSD Secure Shell server.
Nov 26 20:19:23 homestead sshd[2778]: Server listening on 0.0.0.0 port 22.
Nov 26 20:19:23 homestead sshd[2778]: Server listening on :: port 22.

vagrant@homestead:~/gb_linux$ cat > infile.txt
Welcome!
vagrant@homestead:~/gb_linux$ ls
cat.err  infile.txt  welcome.txt
vagrant@homestead:~/gb_linux$ cat infile.txt
Welcome!
vagrant@homestead:~/gb_linux$

# сочетание Ctrl-D передает в оболочку сигнал EOT (конец передачи). В свою очередь сигнал инициирует
# закрытие файла (EOF) и выход из программы