# 4. Создать пользователя, обладающего возможностью выполнять действия от имени суперпользователя.
vagrant@homestead:~/gb_linux/t3$ sudo adduser sidekick
Adding user `sidekick' ...
Adding new group `sidekick' (1001) ...
Adding new user `sidekick' (1001) with group `sidekick' ...
Creating home directory `/home/sidekick' ...
Copying files from `/etc/skel' ...
Enter new UNIX password:
Retype new UNIX password:
passwd: password updated successfully
Changing the user information for sidekick
Enter the new value, or press ENTER for the default
	Full Name []:
	Room Number []:
	Work Phone []:
	Home Phone []:
	Other []:
Is the information correct? [Y/n]

vagrant@homestead:~/gb_linux/t3$ usermod -aG sudo sidekick
vagrant@homestead:~/gb_linux/t3$ sudo cat /etc/gshadow
tape:*::
sudo:*::vagrant,sidekick
audio:*::
