#!/bin/bash

cd "$(dirname "$0")"

for FILE in `ls`
do
	if test -d $FILE
	then
		echo stow "$@" $FILE
		stow "$@" $FILE
	fi
done

cd - > /dev/null
