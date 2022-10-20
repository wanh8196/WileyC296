#!/bin/sh
<<com Create a simple shell script to tell the user about their session – they need to know:

What their username is
What the current date is
What the time is
What their current working directory is
How many files they have in that directory
What is the biggest file in their current directory'
com

username=`whoami`
date=`date +%d.%m.%Y`
time=`date +%R%Z`
workdir=`pwd`
filecount=`ls |wc -l`
biggestfile=`du -sh *|sort -rh |head -1`


echo "Your username is:" $username
echo "The current date is:" $date
echo "The time is:" $time
echo "The current work directory is:" $workdir
echo "There are" $filecount" files in this directory."
echo "The biggest file in the current directory is" $biggestfile
