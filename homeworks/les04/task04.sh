# 4. Сигналы процессам. Запустите mc. Используя ps, найдите PID процесса, завершите процесс,
# передав ему сигнал 9.

vagrant@homestead:~/gb_linux$ ps -elf | tail
5 S vagrant   2315  2314  0  80   0 - 48460 -      19:49 ?        00:00:00 (sd-pam)
5 S vagrant   2390  2312  0  80   0 - 27086 -      19:49 ?        00:00:00 sshd: vagrant@pts/0
0 S vagrant   2391  2390  0  80   0 -  5460 wait   19:49 pts/0    00:00:00 -bash
1 I root      2712     2  0  80   0 -     0 -      20:09 ?        00:00:00 [kworker/u2:2]
1 I root      2763     2  0  80   0 -     0 -      20:17 ?        00:00:00 [kworker/u2:1]
4 S root      2778     1  0  80   0 - 18074 -      20:17 ?        00:00:00 /usr/sbin/sshd -D
0 S vagrant   2805  2391  0  80   0 - 13667 poll_s 20:24 pts/0    00:00:00 mc
0 S vagrant   2807  2805  0  80   0 -  5434 wait   20:24 pts/1    00:00:00 bash -rcfile .bashrc
0 R vagrant   2822  2807  0  80   0 -  9916 -      20:25 pts/1    00:00:00 ps -elf
0 S vagrant   2823  2807  0  80   0 -  1877 pipe_w 20:25 pts/1    00:00:00 tail

vagrant@homestead:~/gb_linux$ kill -9 2805Killed