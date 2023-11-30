#!/bin/bash
    echo "Enter line which you want to print:"
    read LINE_NUMBER


LINE_NUM=1
while [ $LINE_NUM -le $LINE_NUMBER ]
do

    read LINE
    
    echo "${LINE_NUM}: ${LINE}"
    LINE_NUM=$((LINE_NUM + 1))
done < /etc/passwd