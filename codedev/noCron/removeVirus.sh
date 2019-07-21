#!/bin/bash
TARGET=$1
if [ $# = 1 ];then
	pkill -f definitelyNotAVirus.py
	rm $TARGET/definitelyNotAVirus.py
	rm $TARGET/sender.sh
	# rm $TARGET/output.log
	rm $TARGET/file.log
else
	echo "USER ERROR: not enough arguements    (errorID:10t)"
fi 
