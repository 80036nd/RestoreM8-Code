#!/bin/bash
set -e
clear
cd ~/Documents/RestoreM8
echo "RestoreM8 By 80036nd"
FILE=restore.ipsw
if [ -f "$FILE" ]; then
echo "The $FILE file exists. Continuing..."
else
echo "The $FILE file does not exist on the ~/Documents/RestoreM8 folder! Cannot continue."
exit
fi

FILE=blob.shsh2
if [ -f "$FILE" ]; then
echo "The $FILE file exists. Continuing..."
else
echo "The $FILE file does not exist on the ~/Documents/RestoreM8 folder! Cannot continue."
exit
fi

FILE=futurerestore
if [ -f "$FILE" ]; then
echo "The $FILE file exists. Continuing..."
else
echo "The $FILE file does not exist on the ~/Documents/RestoreM8 folder! Cannot continue. Please re-download the code from the app!"
exit
fi
echo "Now transfering the control to FutureRestore! Please monitor the Terminal!"
echo "Please wait for FutureRestore to complete."
echo "*********************************************************"
printf "\n"
echo "Welcome to FutureRestore!"
chmod 777 futurerestore
./futurerestore -t blob.shsh2 --latest-sep --latest-baseband restore.ipsw




