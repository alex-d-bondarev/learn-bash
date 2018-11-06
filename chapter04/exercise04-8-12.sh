#!/bin/bash

echo "===================="
echo "Starting exercise 04"
echo "===================="
echo "Steps 8-12"
echo "----------"

echo "8. Put these commands in a shell script that will generate comprehensible output."
echo "Done"
echo

echo "9. Can you find an alternative for wc −l, using grep?"
echo "Use grep -c key"

echo "10. Using the file system table (/etc/fstab for instance), list local disk devices."
diskutil list
echo

echo "11. Make a script that checks whether a user exists in /etc/passwd. For now, you can specify the user name in the script, you don't have to work with arguments and conditionals at this stage."
echo "Fails on Mac:"
cat /etc/passwd | grep $(whoami)
echo

echo "12. Display configuration files in /etc that contain numbers in their names"
echo /etc/*[[:digit:]]* | tr " " "\n"
echo
