#!/bin/bash

echo "Your total file Function is excuting . . ."

file_count ()
{
    echo "Your total File of current Directory: " 
    ls -l |  wc -l
}
file_count