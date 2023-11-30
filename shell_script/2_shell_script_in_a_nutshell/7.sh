#!/bin/bash

echo "Total Number of Arguments as File or Directory is :" $#
echo "Arguments files or Directory are:" $@

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
ls -lah

