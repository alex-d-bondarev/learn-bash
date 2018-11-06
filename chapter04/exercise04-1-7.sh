#!/bin/bash

echo "===================="
echo "Starting exercise 04"
echo "===================="
echo "Steps 1-7"
echo "---------"

echo "1. Display a list of all the users on your system who log in with the Bash shell as a default."
all_users_list=$(dscl . list /Users | grep -v '^_')
echo $(finger ${all_users_list} | grep 'Shell:*' | grep bash | cut -f2 -d ":" | cut -f1 -d$'\t') | tr " " "\n"
echo

echo "2. From the /etc/ directory, display all lines starting with the string “com”."
# echo $(ls /etc/ | grep '\<com*\>') | tr " " "\n" OR
echo $(ls /etc/ | grep ^com) | tr " " "\n"
echo

echo "3. Display all files from the /Users/Alex/GitHub/ directory that do not contain 'learn' string"
echo $(ls /Users/Alex/GitHub/ | grep -v -e learn) | tr " " "\n"
echo

echo "4. Display localhost information from the /etc/hosts file, display the line number(s) matching the search string and count the number of occurrences of the string."
cat -n /etc/hosts | grep -v -e "#" | grep localhost
printf "Number of occurrences is:"
cat -n /etc/hosts | grep -v -e "#" | grep localhost | wc -l
echo

echo "5. Display a list of /usr/share/doc subdirectories containing information about shells"
find /usr/share/doc -type f -name '*bash*' | sed 's|/[^/]*$||' | sort | uniq
echo

echo "6. How many README files are in \"/usr/share/doc\"? Don't count anything in the form of
\"README.a_string\"."
find /usr/share/doc -name '*README'| wc -l
echo

echo "7. Make a list of files in your Downloads directory that were changed less that 10 hours ago, using grep, but leave out directories."
find ~/Downloads/ -type f -mtime -10h | sed 's!.*/!!'
echo
