#!/bin/bash

if [ "$1" == "" ] ; then
echo "Kolik si das piv?"
read pocetPiv
else
pocetPiv=$1
fi

if [[ "$pocetPiv" -eq 0 ]] || [[ "$pocetPiv" -eq 1 ]] ; then
echo "das si $pocetPiv pivo"
elif [[ "$pocetPiv" -ge 2 ]] && [[ "$pocetPiv" -lt 5 ]] ; then
echo "das si $pocetPiv piva"
else
echo "das si $pocetPiv piv"
fi





jan.dostal@perun:~$ bash soubor.sh
Kolik si das piv?
1
das si 1 pivo
jan.dostal@perun:~$ bash soubor.sh
Kolik si das piv?
0
das si 0 pivo
jan.dostal@perun:~$ bash soubor.sh
Kolik si das piv?
2
das si 2 piva
jan.dostal@perun:~$ bash soubor.sh
Kolik si das piv?
3
das si 3 piva
jan.dostal@perun:~$ bash soubor.sh
Kolik si das piv?
4
das si 4 piva
jan.dostal@perun:~$ bash soubor.sh
Kolik si das piv?
5
das si 5 piv
jan.dostal@perun:~$ bash soubor.sh
Kolik si das piv?
1222
das si 1222 piv
jan.dostal@perun:~$ bash soubor.sh 10
das si 10 piv
jan.dostal@perun:~$ bash soubor.sh 3
das si 3 piva
jan.dostal@perun:~$ bash soubor.sh 1
das si 1 pivo