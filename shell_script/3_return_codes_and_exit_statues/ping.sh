#!/bin/bash
HOST=google.com
ping -c 1 $HOST

if [ "$?" -eq "0" ]
then 
    echo "we can ping"
else
    echo "we can not ping"
fi