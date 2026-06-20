#!/bin/bash

echo "1. Add user"
echo "1. Remove user"
echo "Enter choice(1 , 2)"
read choice

echo "Enter user name"
read username

if [ "$choice" -eq 1 ]; then
  sudo useradd -m "$username"
  echo "$username is added"

elif [ "$choice" -eq 2 ]; then
     sudo userdel -r "$username"
     echo "$username is deleted"

else 
    echo "Wrong choice"
fi


