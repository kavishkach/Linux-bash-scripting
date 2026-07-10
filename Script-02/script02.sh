#!/bin/bash

echo "========================"
echo "      Age Checker"
echo "========================"
echo

#input user details
read -p "Enter your name :" name
read -p "Enter your age :" age

echo "Hello $name"

#logic
if [ $age -lt 13 ]; then
 echo "Catergory : Child"

elif [ $age -lt 20 ]; then
 echo "Catergory : Teenager"

elif [ $age -lt 60 ]; then
 echo "Catergory : Adult"

else
 echo "Catergory : Senior Citizen"

fi

#end
echo
echo "================================="
echo "Thank you for using Age Checker!"
echo "================================="
