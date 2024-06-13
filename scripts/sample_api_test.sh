#!/bin/sh

# test url

# curl to the input paratemeter
http_status=$(curl -s -o /dev/null -w "%{http_code}" https://www.$1.com; )
echo $'\n' $?

# Check if the HTTP status code is 200
if [ "$http_status" -eq 200 ]; then
    echo "HTTP status is 200"
    exit 0
else
    echo "HTTP status is not 200"
    exit 1
fi