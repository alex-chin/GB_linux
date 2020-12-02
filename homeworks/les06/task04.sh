# 4. Используя grep, проанализировать файл /var/log/syslog, отобрав события на своё усмотрение.
vagrant@homestead:~/gb_linux$ cat  /var/log/syslog | grep ssh
Nov 24 12:42:29 homestead systemd[2279]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Nov 24 12:43:09 homestead systemd[8136]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Nov 26 19:46:38 homestead systemd[1195]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Nov 26 19:47:09 homestead systemd[1195]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Nov 26 19:49:29 homestead systemd[2314]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Dec  1 16:42:15 homestead systemd[1146]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
Dec  1 16:42:29 homestead systemd[1146]: Closed GnuPG cryptographic agent (ssh-agent emulation).
Dec  1 16:47:47 homestead systemd[2389]: Listening on GnuPG cryptographic agent (ssh-agent emulation).
vagrant@homestead:~/gb_linux$