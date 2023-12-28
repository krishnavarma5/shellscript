#!/bin/bash

SOURCE_DIR=/tmp/shellscript-logs

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ ! -d $SOURCE_DIR ] # ! denotes opposite
then
    echo -e "$R source directory: $SOURCE_DIR does not exists. $N" 
fi    

FILES_TO_DELETE=$( find . -type f -mtime +24 -name "*.log")

while IFS= read -r line
do 
    echo "Deleting file: $line"
done <<< $FILES_TO_DELETE    