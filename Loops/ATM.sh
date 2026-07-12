#!/bin/bash

balance=50000

echo "=================================="
echo "         ABC BANK ATM"
echo "=================================="

#User Name
read -p "Enter Your Name : " name
echo
echo "Welcome $name"

#Menu
while true
do
    echo
    echo "========== MENU =========="
    echo "1 Check Balance"
    echo "2 Deposite"
    echo "3 Withdraw"
    echo "4 Exit"
    read -p "Choose : " choice

#if conditions
if [ "$choice" -eq 1 ]; then
    echo
    echo "Current Balance : Rs. $balance"

elif [ "$choice" -eq 2 ]; then
     read -p "Enter Deposit Amount : " deposit 
     
     if [ "$deposit" -gt 0 ]; then
     balance=$((balance + deposit))
     echo
     echo "Deposit Successful!"
     echo "Current Balance : Rs. $balance"
     else
        echo "Invalid Amount!"
     fi

elif [ "$choice" -eq 3 ]; then
    read -p "Enter Withdraw Amount : " withdraw

    if [ "$withdraw" -le 0 ]; then
    echo "Invalid Amount!"
    elif [ "$withdraw" -gt "$balance" ]; then
    echo "Insufficient Balance!"
    else
    balance=$((balance - withdraw))
    echo
    echo "Withdraw Successful!"
    echo "Current Balance : Rs. $balance"
    fi

elif [ "$choice" -eq 4 ]; then
    echo
    echo "Thank You For Banking With Us!"
break

else
    echo
    echo "Invalid Choice!"
fi
done
