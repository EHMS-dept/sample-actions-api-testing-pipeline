#!/bin/sh

# test url
curl -s -o /dev/null -w "%{http_code}" https://www.google.com; 
echo $'\n' $?
