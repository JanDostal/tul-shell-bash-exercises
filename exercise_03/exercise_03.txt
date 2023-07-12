jan.dostal@perun:~$ ls -l
total 8
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
--w--w--w- 1 jan.dostal sh 0 Oct 4 14:03 lamparna
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny
jan.dostal@perun:~$ cp /home/jana/spust_me.sh .
jan.dostal@perun:~$ ls -l
total 12
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
--w--w--w- 1 jan.dostal sh 0 Oct 4 14:03 lamparna
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny
-rwxr-xr-x 1 jan.dostal sh 99 Oct 14 16:54 spust_me.sh
jan.dostal@perun:~$ umask
0022

jan.dostal@perun:~$ ./spust_me.sh
^C
jan.dostal@perun:~$ ./spust_me.sh &
[1] 17641
jan.dostal@perun:~$ jobs
[1]+ Running ./spust_me.sh &

jan.dostal@perun:~$ ps u
USER PID %CPU %MEM VSZ RSS TTY STAT START TIME COMMAND
jan.dos+ 506 0.0 0.2 23880 5564 pts/0 Ss 12:49 0:00 -bash
jan.dos+ 17641 0.0 0.2 15168 4348 pts/0 S 16:55 0:00 /bin/bash ./spust_me.sh
jan.dos+ 17688 0.0 0.0 8696 776 pts/0 S 16:55 0:00 sleep 1s
jan.dos+ 17689 0.0 0.1 38596 3528 pts/0 R+ 16:55 0:00 ps u
jan.dostal@perun:~$ kill -SIGTSTP 17641; sleep 10s; bg 1

[1]+ Stopped ./spust_me.sh
[1]+ ./spust_me.sh &
jan.dostal@perun:~$ jobs
[1]+ Running ./spust_me.sh &

jan.dostal@perun:~$ ps u
USER PID %CPU %MEM VSZ RSS TTY STAT START TIME COMMAND
jan.dos+ 506 0.0 0.2 23880 5568 pts/0 Ss 12:49 0:00 -bash
jan.dos+ 17641 0.0 0.2 15168 4348 pts/0 S 16:55 0:00 /bin/bash ./spust_me.sh
jan.dos+ 17956 0.0 0.0 8696 752 pts/0 S 16:56 0:00 sleep 1s
jan.dos+ 17957 0.0 0.1 38596 3352 pts/0 R+ 16:56 0:00 ps u
jan.dostal@perun:~$ kill 17641
jan.dostal@perun:~$ ps u
USER PID %CPU %MEM VSZ RSS TTY STAT START TIME COMMAND
jan.dos+ 506 0.0 0.2 23880 5568 pts/0 Ss 12:49 0:00 -bash
jan.dos+ 18054 0.0 0.1 38596 3476 pts/0 R+ 16:57 0:00 ps u
[1]+ Terminated ./spust_me.sh

jan.dostal@perun:~$ ls -l
total 16
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
-rw-r--r-- 1 jan.dostal sh 1310 Oct 14 16:57 kolikjehodin
--w--w--w- 1 jan.dostal sh 0 Oct 4 14:03 lamparna
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny
-rwxr-xr-x 1 jan.dostal sh 99 Oct 14 16:54 spust_me.sh
jan.dostal@perun:~$ cat kolikjehodin
1 16:55:01
2 16:55:02
3 16:55:03
4 16:55:04
5 16:55:05
6 16:55:06
1 16:55:11
2 16:55:12
3 16:55:13
4 16:55:14
5 16:55:15
6 16:55:16
7 16:55:17
8 16:55:18
9 16:55:19
10 16:55:20
11 16:55:21
12 16:55:22
13 16:55:23
14 16:55:24
15 16:55:25
16 16:55:26
17 16:55:27
18 16:55:28
19 16:55:29
20 16:55:30
21 16:55:31
22 16:55:32
23 16:55:33
24 16:55:34
25 16:55:35
26 16:55:36
27 16:55:37
28 16:55:38
29 16:55:39
30 16:55:40
31 16:55:41
32 16:55:42
33 16:55:43
34 16:55:44
35 16:55:45
36 16:55:46
37 16:55:47
38 16:55:48
39 16:55:49
40 16:55:50
41 16:55:51
42 16:55:52
43 16:55:53
44 16:55:54
45 16:55:55
46 16:55:56
47 16:55:57
48 16:55:58
49 16:55:59
50 16:56:00
51 16:56:01
52 16:56:02
53 16:56:03
54 16:56:04
55 16:56:05
56 16:56:06
57 16:56:07
58 16:56:08
59 16:56:09
60 16:56:10
61 16:56:11
62 16:56:12
63 16:56:13
64 16:56:14
65 16:56:15
66 16:56:16
67 16:56:17
68 16:56:18
69 16:56:19
70 16:56:20
71 16:56:21
72 16:56:22
73 16:56:23
74 16:56:24
75 16:56:34
76 16:56:35
77 16:56:36
78 16:56:37
79 16:56:38
80 16:56:39
81 16:56:40
82 16:56:41
83 16:56:42
84 16:56:43
85 16:56:44
86 16:56:45
87 16:56:46
88 16:56:47
89 16:56:48
90 16:56:49
91 16:56:50
92 16:56:51
93 16:56:52
94 16:56:53
95 16:56:54
96 16:56:55
97 16:56:56
98 16:56:57
99 16:56:58
100 16:56:59
101 16:57:00
102 16:57:01
103 16:57:02
104 16:57:03