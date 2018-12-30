#!/bin/bash

echo "Print column 9 from 'ls -l /etc/' that has .conf files starting with a|x using awk"
ls -l /etc/ | grep '\s[a|x].*\.conf' | awk '{print $9}'
echo

echo "Same as above from the book fails on Mac"
ls −l | awk '/\<[a|x].*\.conf$/ { print $9 }'
echo

echo "Add 'Files found:' text before output via awk"
ls -l /etc/ | grep '\s[a|x].*\.conf' | awk 'BEGIN { print "Files found:" } {print $9}'
echo

echo "Add 'Search complete.' text after output via awk"
ls -l /etc/ | grep '\s[a|x].*\.conf' | awk '{print $9} END { print "Search complete."}'
echo

echo "Count awk processed lines after output:"
ls -l /etc/ | grep '\s[a|x].*\.conf' | awk '{print $9} END { print "Number of processed lines is " NR}'
echo
