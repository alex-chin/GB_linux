# 2. Установить пакет на свой выбор, используя snap.
alex@alex-VirtualBox:~$ snap search prolog
Название    Версия  Издатель        Примечание  Описание
swi-prolog  8.2.3   jan-swi-prolog  -           Comprehensive implementation of the Prolog programming language
alex@alex-VirtualBox:~$ sudo snap install swi-prolog
Automatically connect eligible plugs and slots of snap "swi-prolog"
Setup snap "swi-prolog" (21) security profiles for auto-connections
swi-prolog 8.2.3 от Jan Wielemaker (jan-swi-prolog) установлен
alex@alex-VirtualBox:~$ swi-prolog.swipl
Welcome to SWI-Prolog (threaded, 64 bits, version 8.2.3)
SWI-Prolog comes with ABSOLUTELY NO WARRANTY. This is free software.
Please run ?- license. for legal details.

For online help and background, visit https://www.swi-prolog.org
For built-in help, use ?- help(Topic). or ?- apropos(Word).

?-

?- pwd.
% /home/alex/
true.

?- halt.
alex@alex-VirtualBox:~$

