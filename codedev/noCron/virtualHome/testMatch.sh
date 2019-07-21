#!/bin/bash
grep -q "# SOURCE: from https://www.geeksforgeeks.org/design-a-keylogger-in-python/" install.sh >/dev/null #2>&1
STDOUT=`readlink -f /proc/$$/fd/1`
STDERR=`readlink -f /proc/$$/fd/2`
exec 1>$STDOUT 2>$STDERR

if [ $? = 0 ]; then
	echo "its here!"
fi