jan.dostal@perun:~$ utmpdump /var/log/wtmp | tr -s " " | grep "jan.dostal" | grep "2022-10" | cut -d" " -f11 | cut -d"," -f1 | cut -d"[" -f2 | sort -n
Utmp dump of /var/log/wtmp
2022-10-04T10:46:43
2022-10-04T10:53:42
2022-10-04T11:49:50
2022-10-04T19:42:05
2022-10-04T20:02:49
2022-10-14T10:49:33
2022-10-18T10:38:53
2022-10-25T10:36:44

jan.dostal@perun:~$ utmpdump /var/log/wtmp | grep "jan.dostal" | grep "2022-10" | wc -l
Utmp dump of /var/log/wtmp
8

jan.dostal@perun:~$ utmpdump /var/log/wtmp | tr -s " " | grep "jan.dostal" | grep "2022-10" | cut -d" " -f9 | cut -d"[" -f2 | uniq
Utmp dump of /var/log/wtmp
147.230.78.153
147.230.11.44
147.230.11.77
147.230.11.4
147.230.11.56
147.230.11.203

jan.dostal@perun:~$ utmpdump /var/log/wtmp | tr -s " " | grep "jan.dostal" | grep "2022-10" | cut -d" " -f9 | cut -d"[" -f2 | uniq | wc -l
Utmp dump of /var/log/wtmp
6

jan.dostal@perun:~$ ls -l
total 36
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
-rw-r--r-- 1 jan.dostal sh 1310 Oct 14 16:57 kolikjehodin
--w--w--w- 1 jan.dostal sh 0 Oct 4 14:03 lamparna
-rw-r--r-- 1 jan.dostal sh 17431 Oct 18 13:42 muj_soubor
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny
-rwxr-xr-x 1 jan.dostal sh 99 Oct 14 16:54 spust_me.sh
jan.dostal@perun:~$ touch .plan
jan.dostal@perun:~$ ls -la
total 76
drwxr-xr-x 7 jan.dostal sh 4096 Oct 25 14:00 .
drwxr-xr-x 87 root root 4096 Oct 3 12:02 ..
-rw------- 1 jan.dostal sh 6419 Oct 18 16:12 .bash_history
-rw-r--r-- 1 jan.dostal sh 3771 Oct 4 12:52 .bashrc
drwx------ 2 jan.dostal sh 4096 Sep 27 12:40 .cache
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
-rw-r--r-- 1 jan.dostal sh 1024 Oct 25 13:17 .cesta.swp
drwx------ 3 jan.dostal sh 4096 Sep 27 12:40 .gnupg
-rw-r--r-- 1 jan.dostal sh 1310 Oct 14 16:57 kolikjehodin
--w--w--w- 1 jan.dostal sh 0 Oct 4 14:03 lamparna
drwxr-xr-x 3 jan.dostal sh 4096 Oct 25 13:17 .local
-rw-r--r-- 1 jan.dostal sh 17431 Oct 18 13:42 muj_soubor
-rw-r--r-- 1 jan.dostal sh 0 Oct 25 14:00 .plan
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny
-rw-r--r-- 1 jan.dostal sh 808 Oct 4 12:52 .profile
-rwxr-xr-x 1 jan.dostal sh 99 Oct 14 16:54 spust_me.sh
jan.dostal@perun:~$ nano .plan
jan.dostal@perun:~$ finger jan.dostal
Login: jan.dostal Name: Jan Dostal
Directory: /home/sh/jan.dostal Shell: /bin/bash
On since Tue Oct 25 12:36 (CEST) on pts/13 from 147.230.11.203
1 second idle
No mail.
Plan:
Hello world