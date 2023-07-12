Vlastník má právo číst a zapisovat do souboru.
Grupa může pouze číst.
Ostatní nemůžou ani spouštět, ani zapisovat, ani číst.


jan.dostal@perun:~$ mkdir pokusny
jan.dostal@perun:~$ ls -l
total 8
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
drwxr-xr-x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny

jan.dostal@perun:~$ chmod og-r pokusny
jan.dostal@perun:~$ chmod u-w pokusny
jan.dostal@perun:~$ ls -l
total 8
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny



jan.dostal@perun:~$ touch lamparna
jan.dostal@perun:~$ ls -l
total 8
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
-rw-r--r-- 1 jan.dostal sh 0 Oct 4 14:03 lamparna
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny

jan.dostal@perun:~$ chmod ugo-r lamparna
jan.dostal@perun:~$ chmod go+w lamparna
jan.dostal@perun:~$ ls -l
total 8
----rwx--- 1 jan.dostal sh 0 Oct 4 13:09 cesta
--w--w--w- 1 jan.dostal sh 0 Oct 4 14:03 lamparna
drwxr-xr-x 2 jan.dostal sh 4096 Sep 27 13:30 poezie
dr-x--x--x 2 jan.dostal sh 4096 Oct 4 13:56 pokusny