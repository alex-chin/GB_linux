# 1. Подключить репозиторий с nginx любым удобным способом,
# установить nginx и потом удалить nginx, используя утилиту dpkg.
alex@alex-VirtualBox:~$ nginx
Команда «nginx» не найдена, но может быть установлена с помощью:
sudo apt install nginx-core    # version 1.18.0-6ubuntu2, or
sudo apt install nginx-extras  # version 1.18.0-6ubuntu2
sudo apt install nginx-light   # version 1.18.0-6ubuntu2
alex@alex-VirtualBox:~$
alex@alex-VirtualBox:~$ sudo apt-add-repository ppa:nginx/stable
[sudo] пароль для alex:
Репозиторий: 'deb http://ppa.launchpad.net/nginx/stable/ubuntu/ groovy main'
Описание:
This PPA contains the latest Stable Release version of the nginx web server software.

**Only Non-End-of-Life Ubuntu Releases are supported in this PPA**

**Development releases of Ubuntu are not officially supported by this PPA, and uploads for those will not be available until actual final releases for those versions**
Дополнительные сведения: https://launchpad.net/~nginx/+archive/ubuntu/stable
Добавление репозитория.
Press [ENTER] to continue or Ctrl-c to cancel.

Press [ENTER] to continue or Ctrl-c to cancel.
Adding deb entry to /etc/apt/sources.list.d/nginx-ubuntu-stable-groovy.list
Adding disabled deb-src entry to /etc/apt/sources.list.d/nginx-ubuntu-stable-groovy.list
Adding key to /etc/apt/trusted.gpg.d/nginx-ubuntu-stable.gpg with fingerprint 8B3981E7A6852F782CC4951600A6F0A3C300EE8C
Игн:1 http://ppa.launchpad.net/nginx/stable/ubuntu groovy InRelease
Ошб:2 http://ppa.launchpad.net/nginx/stable/ubuntu groovy Release
  404  Not Found [IP: 91.189.95.83 80]
Пол:3 http://security.ubuntu.com/ubuntu groovy-security InRelease [110 kB]
Пол:4 http://security.ubuntu.com/ubuntu groovy-security/main i386 Packages [49,1 kB]
Пол:5 http://security.ubuntu.com/ubuntu groovy-security/main amd64 Packages [131 kB]
Пол:6 http://security.ubuntu.com/ubuntu groovy-security/main Translation-en [36,8 kB]
Пол:7 http://security.ubuntu.com/ubuntu groovy-security/main amd64 DEP-11 Metadata [4 684 B]
Пол:8 http://security.ubuntu.com/ubuntu groovy-security/main DEP-11 48x48 Icons [7 290 B]
Пол:9 http://security.ubuntu.com/ubuntu groovy-security/main DEP-11 64x64 Icons [10,8 kB]
Пол:10 http://security.ubuntu.com/ubuntu groovy-security/main amd64 c-n-f Metadata [2 476 B]
Пол:11 http://security.ubuntu.com/ubuntu groovy-security/restricted amd64 Packages [29,4 kB]
Пол:12 http://security.ubuntu.com/ubuntu groovy-security/restricted Translation-en [4 564 B]
Пол:13 http://security.ubuntu.com/ubuntu groovy-security/universe i386 Packages [21,6 kB]
Пол:14 http://security.ubuntu.com/ubuntu groovy-security/universe amd64 Packages [28,6 kB]
Пол:15 http://security.ubuntu.com/ubuntu groovy-security/universe Translation-en [12,9 kB]
Пол:16 http://security.ubuntu.com/ubuntu groovy-security/universe amd64 DEP-11 Metadata [1 804 B]
Пол:17 http://security.ubuntu.com/ubuntu groovy-security/universe amd64 c-n-f Metadata [1 652 B]
Сущ:18 http://ru.archive.ubuntu.com/ubuntu groovy InRelease
Пол:19 http://ru.archive.ubuntu.com/ubuntu groovy-updates InRelease [110 kB]
Пол:20 http://ru.archive.ubuntu.com/ubuntu groovy-backports InRelease [101 kB]
Пол:21 http://ru.archive.ubuntu.com/ubuntu groovy-updates/main i386 Packages [98,6 kB]
Пол:22 http://ru.archive.ubuntu.com/ubuntu groovy-updates/main amd64 Packages [211 kB]
Пол:23 http://ru.archive.ubuntu.com/ubuntu groovy-updates/main Translation-en [56,5 kB]
Пол:24 http://ru.archive.ubuntu.com/ubuntu groovy-updates/main amd64 DEP-11 Metadata [24,1 kB]
Пол:25 http://ru.archive.ubuntu.com/ubuntu groovy-updates/main DEP-11 48x48 Icons [17,8 kB]
Пол:26 http://ru.archive.ubuntu.com/ubuntu groovy-updates/main DEP-11 64x64 Icons [25,4 kB]
Пол:27 http://ru.archive.ubuntu.com/ubuntu groovy-updates/main amd64 c-n-f Metadata [3 616 B]
Пол:28 http://ru.archive.ubuntu.com/ubuntu groovy-updates/restricted i386 Packages [3 884 B]
Пол:29 http://ru.archive.ubuntu.com/ubuntu groovy-updates/restricted amd64 Packages [52,8 kB]
Пол:30 http://ru.archive.ubuntu.com/ubuntu groovy-updates/restricted Translation-en [9 344 B]
Пол:31 http://ru.archive.ubuntu.com/ubuntu groovy-updates/restricted amd64 c-n-f Metadata [356 B]
Пол:32 http://ru.archive.ubuntu.com/ubuntu groovy-updates/universe amd64 Packages [60,3 kB]
Пол:33 http://ru.archive.ubuntu.com/ubuntu groovy-updates/universe i386 Packages [36,4 kB]
Пол:34 http://ru.archive.ubuntu.com/ubuntu groovy-updates/universe Translation-en [24,1 kB]
Пол:35 http://ru.archive.ubuntu.com/ubuntu groovy-updates/universe amd64 DEP-11 Metadata [14,1 kB]
Пол:36 http://ru.archive.ubuntu.com/ubuntu groovy-updates/universe DEP-11 48x48 Icons [19,0 kB]
Пол:37 http://ru.archive.ubuntu.com/ubuntu groovy-updates/universe DEP-11 64x64 Icons [34,3 kB]
Пол:38 http://ru.archive.ubuntu.com/ubuntu groovy-updates/universe amd64 c-n-f Metadata [2 068 B]
Пол:39 http://ru.archive.ubuntu.com/ubuntu groovy-updates/multiverse amd64 Packages [2 316 B]
Пол:40 http://ru.archive.ubuntu.com/ubuntu groovy-updates/multiverse Translation-en [644 B]
Пол:41 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe i386 Packages [2 528 B]
Пол:42 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe amd64 Packages [3 612 B]
Пол:43 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe Translation-en [1 272 B]
Пол:44 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe amd64 DEP-11 Metadata [532 B]
Пол:45 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe DEP-11 48x48 Icons [29 B]
Пол:46 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe DEP-11 64x64 Icons [29 B]
Пол:47 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe DEP-11 64x64@2 Icons [29 B]
Пол:48 http://ru.archive.ubuntu.com/ubuntu groovy-backports/universe amd64 c-n-f Metadata [188 B]
Чтение списков пакетов… Готово
E: Репозиторий «http://ppa.launchpad.net/nginx/stable/ubuntu groovy Release» не содержит файла Release.
N: Обновление из этого репозитория нельзя выполнить безопасным способом, поэтому по умолчанию он отключён.
N: Информацию о создании репозитория и настройках пользователя смотрите в справочной странице apt-secure(8).
alex@alex-VirtualBox:~$



alex@alex-VirtualBox:~$ sudo apt install  nginx -y
Чтение списков пакетов… Готово
Построение дерева зависимостей
Чтение информации о состоянии… Готово
Будут установлены следующие дополнительные пакеты:
  libnginx-mod-http-image-filter libnginx-mod-http-xslt-filter libnginx-mod-mail libnginx-mod-stream
  libnginx-mod-stream-geoip2 nginx-common nginx-core
Предлагаемые пакеты:
  fcgiwrap nginx-doc
Следующие НОВЫЕ пакеты будут установлены:
  libnginx-mod-http-image-filter libnginx-mod-http-xslt-filter libnginx-mod-mail libnginx-mod-stream
  libnginx-mod-stream-geoip2 nginx nginx-common nginx-core
Обновлено 0 пакетов, установлено 8 новых пакетов, для удаления отмечено 0 пакетов, и 116 пакетов не обновлено.
Необходимо скачать 623 kB архивов.
После данной операции объём занятого дискового пространства возрастёт на 2 254 kB.
Пол:1 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 nginx-common all 1.18.0-6ubuntu2 [39,7 kB]
Пол:2 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 libnginx-mod-http-image-filter amd64 1.18.0-6ubuntu2 [16,0 kB]
Пол:3 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 libnginx-mod-http-xslt-filter amd64 1.18.0-6ubuntu2 [14,3 kB]
Пол:4 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 libnginx-mod-mail amd64 1.18.0-6ubuntu2 [43,9 kB]
Пол:5 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 libnginx-mod-stream amd64 1.18.0-6ubuntu2 [68,3 kB]
Пол:6 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 libnginx-mod-stream-geoip2 amd64 1.18.0-6ubuntu2 [9 644 B]
Пол:7 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 nginx-core amd64 1.18.0-6ubuntu2 [427 kB]
Пол:8 http://ru.archive.ubuntu.com/ubuntu groovy/main amd64 nginx amd64 1.18.0-6ubuntu2 [3 980 B]
Получено 623 kB за 0с (1 801 kB/s)
Предварительная настройка пакетов …
Выбор ранее не выбранного пакета nginx-common.
(Чтение базы данных … на данный момент установлено 198458 файлов и каталогов.)
Подготовка к распаковке …/0-nginx-common_1.18.0-6ubuntu2_all.deb …
Распаковывается nginx-common (1.18.0-6ubuntu2) …
Выбор ранее не выбранного пакета libnginx-mod-http-image-filter.
Подготовка к распаковке …/1-libnginx-mod-http-image-filter_1.18.0-6ubuntu2_amd64.deb …
Распаковывается libnginx-mod-http-image-filter (1.18.0-6ubuntu2) …
Выбор ранее не выбранного пакета libnginx-mod-http-xslt-filter.
Подготовка к распаковке …/2-libnginx-mod-http-xslt-filter_1.18.0-6ubuntu2_amd64.deb …
Распаковывается libnginx-mod-http-xslt-filter (1.18.0-6ubuntu2) …
Выбор ранее не выбранного пакета libnginx-mod-mail.
Подготовка к распаковке …/3-libnginx-mod-mail_1.18.0-6ubuntu2_amd64.deb …
Распаковывается libnginx-mod-mail (1.18.0-6ubuntu2) …
Выбор ранее не выбранного пакета libnginx-mod-stream.
Подготовка к распаковке …/4-libnginx-mod-stream_1.18.0-6ubuntu2_amd64.deb …
Распаковывается libnginx-mod-stream (1.18.0-6ubuntu2) …
Выбор ранее не выбранного пакета libnginx-mod-stream-geoip2.
Подготовка к распаковке …/5-libnginx-mod-stream-geoip2_1.18.0-6ubuntu2_amd64.deb …
Распаковывается libnginx-mod-stream-geoip2 (1.18.0-6ubuntu2) …
Выбор ранее не выбранного пакета nginx-core.
Подготовка к распаковке …/6-nginx-core_1.18.0-6ubuntu2_amd64.deb …
Распаковывается nginx-core (1.18.0-6ubuntu2) …
Выбор ранее не выбранного пакета nginx.
Подготовка к распаковке …/7-nginx_1.18.0-6ubuntu2_amd64.deb …
Распаковывается nginx (1.18.0-6ubuntu2) …
Настраивается пакет nginx-common (1.18.0-6ubuntu2) …
Created symlink /etc/systemd/system/multi-user.target.wants/nginx.service → /lib/systemd/system/nginx.service.
Настраивается пакет libnginx-mod-http-xslt-filter (1.18.0-6ubuntu2) …
Настраивается пакет libnginx-mod-mail (1.18.0-6ubuntu2) …
Настраивается пакет libnginx-mod-http-image-filter (1.18.0-6ubuntu2) …
Настраивается пакет libnginx-mod-stream (1.18.0-6ubuntu2) …
Настраивается пакет libnginx-mod-stream-geoip2 (1.18.0-6ubuntu2) …
Настраивается пакет nginx-core (1.18.0-6ubuntu2) …
 * Upgrading binary nginx                                                                                          [ OK ]
Настраивается пакет nginx (1.18.0-6ubuntu2) …
Обрабатываются триггеры для systemd (246.6-1ubuntu1) …
Обрабатываются триггеры для man-db (2.9.3-2) …
Обрабатываются триггеры для ufw (0.36-7) …
alex@alex-VirtualBox:~$
alex@alex-VirtualBox:~$ nginx
nginx: [alert] could not open error log file: open() "/var/log/nginx/error.log" failed (13: Permission denied)
2020/12/04 11:36:29 [warn] 4014#4014: the "user" directive makes sense only if the master process runs with super-user privileges, ignored in /etc/nginx/nginx.conf:1
2020/12/04 11:36:29 [emerg] 4014#4014: open() "/var/log/nginx/access.log" failed (13: Permission denied)
alex@alex-VirtualBox:~$


alex@alex-VirtualBox:~$ sudo dpkg -r nginx
(Чтение базы данных … на данный момент установлен 198541 файл и каталог.)
Удаляется nginx (1.18.0-6ubuntu2) …
alex@alex-VirtualBox:~$








