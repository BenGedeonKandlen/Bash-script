#!/bin/bash

datei=find ./ -type f -name "*.sql"

while
[
find ./ -type f -name "*.sql"
];
do
  gzip datei
  if [datei = *.sql.gz]
    rm datei
  fi
done
