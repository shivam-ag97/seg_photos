#! /usr/bin/bash

for pics in segregate_photos/*.jpg
do 
    year=$(echo $(basename $pics) | cut -c 1-4)
    month=$(echo $(basename $pics) | cut -c 6-6)
    mkdir -p segregate_photos/$year/$month
    mv $pics segregate_photos/$year/$month
done