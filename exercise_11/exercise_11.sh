#!/bin/bash


seznam_basnicek=$(ls -l /home/jana/poezie/ | grep "^-" | tr -s " " | cut -d " " -f9)
pocet_basnicek=$(ls -l /home/jana/poezie/ | grep "^-" | wc -l)
pocet_versu_sloky=4

for ((vers = 1; vers <= 16; vers++))
do
        nahodna_basen_poradi_basne=$((RANDOM % pocet_basnicek + 1))
        nahodna_basen_nazev=$(echo $seznam_basnicek | cut -d " " -f$nahodna_basen_poradi_basne)

        nahodna_basen_pocet_radku=$(cat /home/jana/poezie/$nahodna_basen_nazev | grep -v "^\([A-Z][a-z]*\s\)\{1,3\}-\s[A-Z][a-z]*[^a-zA-Z\s]\?\(\s[a-zA-Z]*[^a-zA-Z\s]\?\)*$" | grep -v "^\s*$" | wc -l)
        nahodna_basen_poradi_radku=$((RANDOM % nahodna_basen_pocet_radku + 1))


        nahodna_basen_radek=$(cat /home/jana/poezie/$nahodna_basen_nazev | grep -v "^\([A-Z][a-z]*\s\)\{1,3\}-\s[A-Z][a-z]*[^a-zA-Z\s]\?\(\s[a-zA-Z]*[^a-zA-Z\s]\?\)*$" | grep -v "^\s*$" | head -$nahodna_basen_poradi_radku | tail -1)

        if [[ $vers -eq 16 ]];
        then
                nahodna_basen_radek=$(echo $nahodna_basen_radek | sed 's/[^a-zA-Z]*$/\./g')
        fi


        echo $nahodna_basen_radek

        if [[ $((vers % pocet_versu_sloky)) -eq 0 && $vers -ne 16 ]];
        then
                echo ""
        fi
done