# 2. Запустить контейнер с Ubuntu.
alex@alex-E420s:~$ docker search ubuntu
NAME                                                      DESCRIPTION                                     STARS               OFFICIAL            AUTOMATED
ubuntu                                                    Ubuntu is a Debian-based Linux operating sys…   11601               [OK]
dorowu/ubuntu-desktop-lxde-vnc                            Docker image to provide HTML5 VNC interface …   480                                     [OK]
websphere-liberty                                         WebSphere Liberty multi-architecture images …   264                 [OK]
rastasheep/ubuntu-sshd                                    Dockerized SSH service, built on top of offi…   250                                     [OK]
consol/ubuntu-xfce-vnc                                    Ubuntu container with "headless" VNC session…   228                                     [OK]
ubuntu-upstart                                            Upstart is an event-based replacement for th…   109                 [OK]

alex@alex-E420s:~$ docker pull ubuntu
Using default tag: latest
latest: Pulling from library/ubuntu
Digest: sha256:c95a8e48bf88e9849f3e0f723d9f49fa12c5a00cfc6e60d2bc99d87555295e4c
Status: Image is up to date for ubuntu:latest
docker.io/library/ubuntu:latest

# в режиме демона не удалось запустить
# в интерактвном режиме:

alex@alex-E420s:~$ docker run -it ubuntu
root@1121df923c52:/# cat /etc/os-release
NAME="Ubuntu"
VERSION="20.04.1 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.1 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal

# удалось заблокировать сеанс командой:

alex@alex-E420s:~$ docker run ubuntu tail -f /dev/null

# тогда в другом сеансе:

alex@alex-E420s:~$ sudo docker ps -al
[sudo] пароль для alex:
CONTAINER ID        IMAGE               COMMAND               CREATED             STATUS              PORTS               NAMES
e431e44e7c6c        ubuntu              "tail -f /dev/null"   About an hour ago   Up About an hour                        compassionate_grothendieck
alex@alex-E420s:~$ sudo docker exec -it compassionate_grothendieck /usr/bin/bash
root@e431e44e7c6c:/# ls
bin  boot  dev  etc  home  lib  lib32  lib64  libx32  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
root@e431e44e7c6c:/#

# второй вариант

alex@alex-E420s:~$ docker run --name ubuntu -d ubuntu /bin/sh -c "while true; do ping 8.8.8.8; done"
alex@alex-E420s:~$ docker ps -al
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
fbc7557a421b        ubuntu              "/bin/sh -c 'while t…"   3 minutes ago       Up 3 minutes                            ubuntu
alex@alex-E420s:~$
alex@alex-E420s:~$ docker exec -it ubuntu  /bin/bash
root@fbc7557a421b:/# ps -al
F S   UID     PID    PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
0 R     0      14       6  0  80   0 -  1454 -      pts/0    00:00:00 ps
root@fbc7557a421b:/# uname -a
Linux fbc7557a421b 5.4.0-54-generic #60-Ubuntu SMP Fri Nov 6 10:37:59 UTC 2020 x86_64 x86_64 x86_64 GNU/Linux
root@fbc7557a421b:/# exit





