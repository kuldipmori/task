#!/bin/bash

FILE=/etc/shadow
cat $FILE

if [ $? == 0 ]
then 
    echo "Command succeeded"

elif [ $? == 1 ]
then
    echo "Command failed"

else
    echo "Not found any matching in list"
fi