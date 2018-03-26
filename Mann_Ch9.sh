#! /bin/bash

echo "Welcome to Chapter 9!"

echo "First lets check our IP Address, along with some other network info with ifconfig"
ifconfig

route -n

echo "Lets try pinging Google!"

ping google.com -count 10

echo "and we can check the route our packets take to get to Google"
traceroute google.com

