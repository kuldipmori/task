#!/bin/bash

echo "Your arguments files :" $@
echo "Total arguments Number is " $#

if [ "$#" -eq 0 ]; then
    echo "Usage: $0 /dir1 /dir2 /dir3"
    exit 1
fi

file_count()
{
    direcotry="$1"
    echo "your directory is: $direcotry: "
    count=$(find "/$directory" -type f | wc -l)
    echo "$count"
}

for direcotry in "$@"; do
file_count "$directory"
done

