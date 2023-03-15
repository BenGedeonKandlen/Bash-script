#!/bin/bash

cd /home/dev/Dokumente/

datei=find ./ -type f -name "*.sql"

# shellcheck disable=SC1072
while [ find ./ -type f -name "*.sql" ];
do
  gzip $datei
  if [ $datei = *.gz ]
    rm $datei = *.sql
  fi
done
