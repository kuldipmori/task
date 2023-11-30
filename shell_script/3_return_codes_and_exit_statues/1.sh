#!/bin/bash

ping -c 1 -w 1 google.com
echo 

echo "Return Exit code is :"
echo $?