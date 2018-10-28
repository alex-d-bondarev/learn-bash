#!/bin/bash

# Write a script using your favorite editor. 
# The script should display the path to your homedirectory 
# and the terminal type that you are using. 
# Additionally it shows all the services started up in runlevel 3 on your system. 
# (hint: use HOME, TERM and ls /etc/rc3.d/S*)

# display the path to your homedirectory
printf "Show home directory:\n${HOME}\n\n"

# display terminal type that you are using. 
printf "My terminal type is:\n${TERM}\n\n"

# show all the services started up in runlevel 3 on your system. 
printf "Show started runlevel3 services:\nYou will get an error if you are on MAC\n"
ls /etc/rc3.d/S*
echo 
