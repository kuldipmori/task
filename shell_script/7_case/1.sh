#!/bin/bash
echo "Enter Value of 1 to 7" 
read day
case "$day" in
    1)
        echo "sunday"
        ;;
    2)
        echo "monday"
        ;;
    3)
        echo "tuesday"
        ;;
    4) 
        echo "wenesday"
        ;;
    5)
        echo "Thursday"
        ;;
    6)
        echo "friday"
        ;;
    7)
        echo "saturday"
esac
