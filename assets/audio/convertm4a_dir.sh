#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo " Usage: convertm4a_dir.sh <image>"
  exit
fi

for file in *.m4a
do
  ./convertm4a.sh $1 ${file} "${file%.m4a}.mp4"
done
