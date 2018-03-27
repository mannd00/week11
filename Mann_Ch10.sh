#! /bin/bash

echo "Welcome to Chapter 10!"

echo "First we're going to play with grabbing HTML data from websites, we'll telnet to port 80 of google.com. And see what it sends back!"
telnet www.google.com 80
GET / HTTP/1.0

echo -e "\nA better way to grab text from a website is to use curl. and put it into a text file. We'll dump the extra data into /dev/null."
curl --trace-ascii curl_output_file http://www.wikipedia.org/ > /dev/null
cat curl_output_file

echo -e "\nA useful thing to know is what programs are currently listening on open ports."
lsof -i

