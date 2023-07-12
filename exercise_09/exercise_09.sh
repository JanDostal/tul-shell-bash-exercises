
#!/bin/bash

sirkaKrabice=$1
vyskaKrabice=$2

tretinaKrabice=$((vyskaKrabice / 3))
dveTretinyKrabice=$((tretinaKrabice * 2))
tretinaKrabiceSeZbytkem=$((vyskaKrabice - dveTretinyKrabice))

for (( y=0; y<$((vyskaKrabice + 2)); y++ ))
do
           maximumIntervalu=$y
           obsahRadku=""

           for (( x=0; x<$((sirkaKrabice + 2)); x++ ))
           do
                      if [[ ($x -eq 0 && $y -eq 0) ||
                            ($x -eq $((sirkaKrabice + 1)) && $y -eq 0) ||
                            ($x -eq 0 && $y -eq $((vyskaKrabice + 1))) ||
                            ($x -eq $((sirkaKrabice + 1)) && $y -eq $((vyskaKrabice + 1))) ]] ;
                      then
                                obsahRadku="${obsahRadku}."

                      elif [[ ($y -eq 0 && $x -gt 0 && $x -lt $((sirkaKrabice + 1))) ||
                               ($y -eq $((vyskaKrabice + 1)) && $x -gt 0 && $x -lt $((sirkaKrabice + 1))) ]] ;
                      then
                                obsahRadku="${obsahRadku}-"

                      elif [[ ($x -eq 0 && $y -gt 0 && $y -lt $((vyskaKrabice + 1))) ||
                               ($x -eq $((sirkaKrabice + 1)) && $y -gt 0 && $y -lt $((vyskaKrabice + 1))) ]] ;
                      then
                                obsahRadku="${obsahRadku}|"

                      else
                                vybraneCisloZIntervalu=$(((RANDOM % maximumIntervalu) + 1))

                                if [[ $vybraneCisloZIntervalu -ge $tretinaKrabiceSeZbytkem ]] ;
                                then
                                                       obsahRadku="${obsahRadku}o"

                                else
                                                       obsahRadku="${obsahRadku} "
                                fi
                      fi  
           done

           echo "$obsahRadku"
done