#!/bin/bash


echo " "
echo "███    ██ ███    ███  █████  ██████         █████  ██    ██ ████████  ██████  "
echo "████   ██ ████  ████ ██   ██ ██   ██       ██   ██ ██    ██    ██    ██    ██ "
echo "██ ██  ██ ██ ████ ██ ███████ ██████  █████ ███████ ██    ██    ██    ██    ██ "
echo "██  ██ ██ ██  ██  ██ ██   ██ ██            ██   ██ ██    ██    ██    ██    ██ "
echo "██   ████ ██      ██ ██   ██ ██            ██   ██  ██████     ██     ██████  "
echo "											--Robin "
#Nmap-Automate

read -p "Entre the Target address : " Target

echo "1. Lite Scan "
echo "2. Average Scan "
echo "3. Deep Scan (slower) "

read -p "Entre your choice : " choice

if [ $choice -eq 1 ];
then
	sudo nmap -Pn -F -T4 -v -f 8 -sV -O  $Target -oN Nmap_result.txt

elif [ $choice -eq 2 ];
then
	sudo nmap -Pn  -T4 -v -A -p- -f 8 $Target -oN  Nmap-${Targe}.txt 

elif [ $choice -eq 3 ];
then
	sudo nmap -Pn -T0 -f 8 -A -p- --spoof-mac 0 -D whoer.net,virustotal.com $Target -oN Nmap-output.txt

else
	echo "  INVALID OPTION :-(   "
fi
