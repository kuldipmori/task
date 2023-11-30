#!/bin/bash

hello() 
{
    echo "HI from function"
    now
}

now() 
{
    echo "It's $(date +%r)"
}
hello