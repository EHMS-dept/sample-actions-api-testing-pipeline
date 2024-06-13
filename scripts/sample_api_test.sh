#!/bin/sh

# test url
curl -s -o /dev/null -w "%{http_code}" https://www.$1.com; 
echo $'\n' $?
