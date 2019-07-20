#!/bin/bash
#realstart
#start

# finds shell files
find /home -name "*.sh"

# copies self
touch fileData.txt
head -n 9 writeSelf.sh | tail -n 7 > fileData.txt
cat fileData.txt


#end
#realend