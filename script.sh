#!/bin/bash

cd /home/dev/Dokumente

for file in *.sql
do
    if [[ -f $file ]]; then
        gzip -9 $file
    fi
done
