#!/bin/bash

for file in *.sql
do
    if [[ -f $file ]]; then       #läuft mit der Schleife alle .sql-Dateien durch.
        echo $file" wird komprimiert..."
        gzip -9 -k $file
        echo $file" ist fertig komprimiert"
    fi
done

read -p "Sollen die Original Dateien gelösch werden? -Ja[j] oder Nein[n]" antwort
if [ $antwort == j ]; then
    for file in *.sql
       do     #wenn Ja[j] ausgewählt wird, dann werden die gefundenen Dateien gelöscht.
           if [[ -f $file ]]; then
               rm $file
           fi
       done
fi
