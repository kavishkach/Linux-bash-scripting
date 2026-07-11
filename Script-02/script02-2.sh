#!/bin/bash

#===================
#Login System
#===================

echo
echo "========================"
echo "Login Your Admin Account"
echo "========================"
echo

#user inputs
read -p "Enter your username :" username
read -p "Enter your password :" password

#logic with nested if
if [ "$username" = "administrator" ]; then

  if [ "$password" = "admin123" ]; then
  echo
  echo "====Login Successfull==="
  else 
   echo "Wrong Paasword"
  fi

else
 echo "Invalid Username"
fi

echo
echo "========================"
echo

