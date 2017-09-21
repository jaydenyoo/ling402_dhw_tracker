#!/bin/bash

cd ~/.ling402repo

while [ ! -f $1-daily/README.md ]
do
	cd ~/.ling402repo
done

cd $1-daily

prev=$(date --date='last sunday' +%Y%m%d)
curr=$(date +%Y%m%d)
curr_w=$(date +%A)

if [ $curr_w == 'Sunday' ]
then
	prev=$curr
fi 

lst=$(ls -1 20* | cut -c 1-10 | tr -d '[:punct:]' | sort | uniq)

cnt=0

for word in $lst
do
	if (( word <= $curr )) && (( word >= $prev ))
	then
		cnt=$(($cnt+1))
	fi
done

echo "$cnt / 5 Daily Homework Done" 
