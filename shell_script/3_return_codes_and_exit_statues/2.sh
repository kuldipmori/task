#!/bin/bash

echo "Arguments files or Directory:" $@
echo "Total Number of Arguments as File or Directory are :" $#

for filename in "$@"; do 
    if [ -d $filename ]
    then
        echo "$filename - is Direcotry"
        exit 1
        echo "Retuen Code" $? 

    elif [ -x $filename ]
    then 
        echo "$filename - is Excutable file"
        exit 2
        echo "Retuen Code" $?
    
    elif [ -r $filename ] 
    then
        echo "$filename -  is Regular file"
        exit 0
        echo "Retuen Code" $?    

    else
        echo "$filename - if not from any matching"
    fi
done

#NOT GETTING CUSTOM EXIT