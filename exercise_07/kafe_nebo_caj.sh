#1. uloha
#!/bin/bash

echo "Das si kafe nebo caj?"
read odpoved
echo "Da si $odpoved"

#2. uloha
#!/bin/bash

echo "Das si kafe nebo caj?"
startMiliseconds=$(date +'%s%3N')
while [ true ] ; do
read -t 0.001 cekajiciOdpoved
if [ $? = 0 ] ; then
runtimeMiliseconds=$((endMiliseconds-startMiliseconds))
echo "Da si $cekajiciOdpoved"
echo $runtimeMiliseconds | awk '{printf "Trvalo mu to vymyslet: %dh %dm %ds %dms", ($1/3600000), ($1/60000)%60, ($1/1000)%60, $1%1000}'
echo ""
break;
else
endMiliseconds=$(date +'%s%3N')
fi
done