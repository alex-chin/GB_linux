# 3. * Используя дополнительный материал, настроить авторизацию по SSH с использованием ключей.
#
# на машине - хосте
#
alex@alex-E420s:~$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/alex/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/alex/.ssh/id_rsa
Your public key has been saved in /home/alex/.ssh/id_rsa.pub
The key fingerprint is:
SHA256:uxZs0mAXCEyiRdEfA7MW9M1dm5LoqOj6Jp45MG55uB8 alex@alex-E420s
The key's randomart image is:
+---[RSA 3072]----+
| .=*Bo .    .    |
| o .o=+o.o o o   |
|.   o..o+.+ o    |
|   .  +o.  .     |
|     ..=S        |
|o  . .. =.       |
|o.+E.  o..       |
|.B+..   ..       |
|+XB.   ..        |
+----[SHA256]-----+
alex@alex-E420s:~$ scp .ssh/id_rsa.pub alex@192.168.1.45:
#
# на виртуальной машине
#
alex@alex-VirtualBox:~$ cat id_rsa.pub >> .ssh/authorized_keys
alex@alex-VirtualBox:~$ sudo vi /etc/ssh/sshd_config

alex@alex-VirtualBox:~$ sudo systemctl status ssh
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
     Active: active (running) since Fri 2020-11-20 21:18:37 MSK; 48min ago
       Docs: man:sshd(8)
             man:sshd_config(5)
    Process: 562 ExecStartPre=/usr/sbin/sshd -t (code=exited, status=0/SUCCESS)
   Main PID: 576 (sshd)
      Tasks: 1 (limit: 1103)
     Memory: 6.1M
     CGroup: /system.slice/ssh.service
             └─576 sshd: /usr/sbin/sshd -D [listener] 0 of 10-100 startups

alex@alex-VirtualBox:~$ sudo systemctl reboot ssh
#
# вход без пароля
#
alex@alex-E420s:~$ ssh alex@192.168.1.45
Welcome to Ubuntu 20.10 (GNU/Linux 5.8.0-28-generic x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

0 обновлений могут быть установлены прямо сейчас.
0 из этих обновлений, являются обновлениями безопасности.

Last login: Fri Nov 20 21:20:56 2020 from 192.168.1.33


