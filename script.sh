#!/bin/bash

cd /home/dev/Dokumente/

datei=find /home/dev/ -name "*.sql"

# shellcheck disable=SC1072
while [ find /home/dev/ -name "*.sql" ];
do
  gzip $datei
  if [ $datei = *.gz ]
    rm $datei = *.sql
  fi
done
