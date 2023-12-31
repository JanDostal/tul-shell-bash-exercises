#!/bin/bash

if [[ -z $1 || ! -d $1 ]];
then
         echo "Zadej v parametru existujici adresar"
         exit 10
fi

for symbolic_link in $(ls -l $1 | grep "^l" | tr -s " " | cut -d " " -f9,11 | tr " " ";")
do
               symbolic_link_name=$(echo $symbolic_link | cut -d ";" -f1)
               symbolic_link_path=$(echo $symbolic_link | cut -d ";" -f2)

               if [[ -a $symbolic_link_path ]];
               then
                        owner=$(ls -l $symbolic_link_path | tr -s " " | cut -d " " -f3)
                        echo "$symbolic_link_name odkazuje na $symbolic_link_path s vlastníkem $owner"

               else
                        echo "$symbolic_link_name odkazuje na $symbolic_link_path ale cílový soubor neexistuje a tedy nemá vlastníka"
               fi
done