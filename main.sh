#!/bin/bash

echo "Checking LING 402 Daily Homework"

file='.git_cred'

if [ -z ${LING+x} ]; then
	LING=$(pwd)
fi

cd ~/.ling402repo/

if [ ! -f "$file" ]
then
	cd $LING/dist
	./cred.sh
	cd ~/.ling402repo
fi

while IFS=' ' read -r usr pw; do
	name=$usr
	pass=$pw
done < $file

yr=$(date +%Y)
mn=$(date +%m)

if ! echo $mn | grep '[0][1-6]' > /dev/null; then
	sem="Fall"
else
	sem="Spring"
fi

cd ~/.ling402repo

if [ ! -d "$name-daily" ]
then
	cd $LING/dist
	./clone $name $pass $yr $sem
else
	cd $LING/dist
	./pull $name $pass
fi

./check.sh $name

