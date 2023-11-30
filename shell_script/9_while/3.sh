#!/bin/bash

while true
do
    read -p "1-> Show Disk Usage. 
             2-> Show Up-time.
             3-> Current User.
             q-> braak the loop" CHOICE
    case "$CHOICE" in
        1)
        echo && df -h
        ;;

        2)
        echo && uptime
        ;;

        3)
        echo && who
        ;;

        q)
        echo "Good bye"
        break
        ;;
    esac
done