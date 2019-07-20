#!/usr/bin/python
import os
f=open("youWon.txt", "w+")
for i in range(10):
    f.write("This is line %d\r\n" % (i+1))
f.close()

# PYTHON works, maybe not PYTHON3 tho
# */1 * * * * cd /home/jonesy/keylogger/codedev && /usr/bin/python /home/jonesy/keylogger/codedev/testCrontab.py
# */1 * * * * cd /home/jonesy/Desktop/ && /usr/bin/python3 /home/jonesy/Desktop/definitelyNotAVirus.py
# /home/jonesy/Desktop/definitelyNotAVirus.py