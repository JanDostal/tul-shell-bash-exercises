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