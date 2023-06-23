#!/bin/bash

if [ "$#" -eq 3 ]; then 
  ffmpeg -loop 1 -i $1 -i $2 -c:v libx264 -vf "pad=ceil(iw/2)*2:ceil(ih/2)*2" -shortest $3
else
  echo "Usage: ./convertm4a.sh image_input audio_input output_file"
fi
