#!/bin/bash

if [ -d /etc/shadow ]
then 
    echo "Shadow passwords are enabled."
elif [ -x /etc/shadow ]
then
    echo "You have permissions to edit /etc/shadow."
else 
    echo "You do NOT have permissions to edit /etc/shadow."
fi