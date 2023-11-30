#!/bin/bash
echo "Enter file name from same directory :"  
read filename

echo "Your selected file is: $filename"

if [ -f $filenamae ]
then
    echo "is regular"

elif [ -d $filename ]
then
    echo "is directory"

else
    echo "is othertype"
fi

echo "Full details of this file is:" 
ls -lah | grep $filename