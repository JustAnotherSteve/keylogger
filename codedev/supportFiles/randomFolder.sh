#!/bin/bash
# function for a random folder in that directory
declare retval
getRandDir(){
	echo $1
	DIRNUM=$(find $1 -maxdepth 1 -type d -print| wc -l)
	RAN=$(($RANDOM%DIRNUM))
	if [ $RAN = 0 ]; then
		RAN=$(($RAN+1))
	fi
	DIR=$(ls $1 -d */|sed "${RAN}q;d")
	DIRPATH=$(pwd)/$DIR
	retval=$DIRPATH
}
#here=$(pwd)
retval='/home/'
#echo $retval
getRandDir $retval #$retval
#echo $retval
getRandDir $retval
#echo $retval

