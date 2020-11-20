# 1. Навигация по файловой системе.
# Попрактиковаться в перемещении между каталогами, используя полный и относительный путь.
# Перечислить, какие параметры команды cd позволят быстро вернуться в домашний каталог,
# позволят перейти на уровень выше.

vagrant@homestead:~$ ls
ai_static  coda  DoctorScanner  mits  temp
vagrant@homestead:~$ cd coda
vagrant@homestead:~/coda$ pwd
/home/vagrant/coda
vagrant@homestead:~/coda$ cd # переход в домошний каталог 1 способ
vagrant@homestead:~$ cd coda
vagrant@homestead:~/coda$ cd $HOME # переход в домошний каталог 2 способ
vagrant@homestead:~$ cd coda/docs/
vagrant@homestead:~/coda/docs$ cd /home/vagrant/ # абсолютный путь
vagrant@homestead:~$ cd /usr/bin
vagrant@homestead:/usr/bin$ cd ~ # переход в домошний каталог 3 способ
vagrant@homestead:~$ pwd
/home/vagrant
vagrant@homestead:~$
vagrant@homestead:~$ cd ..
vagrant@homestead:/home$ pwd
/home