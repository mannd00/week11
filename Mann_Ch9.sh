#! /bin/bash

echo "Welcome to Chapter 9!"

echo "First lets check our IP Address, along with some other network info with ifconfig"
ifconfig

route -n

echo -e "\nWe can use ping on the loopback address 127.0.0.1 to verify our local Network card is up."
ping -c 10 127.0.0.1

echo -e "\nNow, Lets try pinging Google!"

ping -c 10 google.com

echo -e "\nand we can check the route our packets take to get to Google using traceroute."
traceroute google.com

echo -e "\nThe netstat command is very useful as it allows us to view current connections"
netstat -nt

echo -e "\nThe linux system has a powerful built in firewall system that can be configured using iptables. Lets see whats currently in there!"
iptables -L

echo -e "\nWe can use this to tell the system to drop any packets coming from a certain host, say 169.254.55.55 is a meany, lets block them!"
iptables -A INPUT -s 169.254.55.55 -j DROP

echo -e "\nOne last thing we can play with is scanning wireless networks (assuming we have a wireless NIC)"
iw dev wlan0 scan
iw dev wlan0 link

