#!/bin/bash
# function for a random folder anywhere
declare TARGETDIR
getRandDir(){
	DIRNUM=$(find ~ -type d | wc -l)
	RAN=$(($RANDOM%DIRNUM))
	if [ $RAN = 0 ]; then
		RAN=$(($RAN+1))
	fi
	TARGETDIR=$(find ~ -type d | sed "${RAN}q;d")

}
TARGETDIR=''
getRandDir
echo $TARGETDIR

