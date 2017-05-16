#!/bin/bash

# Wew spaghetti code
# if you're reading this I'm sorry <3

view=$1

for file in $(find templates -mindepth 1 -type f)
do
	# Get basename
	base="$(basename $file)"

	# Get path relative to root
	rel="${file##templates/}"

	# Get the destination file
	dest="packages/$rel"

	# Get the target directory
	target="${dest%%$base}"

	# Let's go ahead and make the target directory
	mkdir -p $target

	# Check to see if it's a .mustache file
	if [ "${file##*.}" == "mustache" ]
	then
		echo "render $rel"
		dest=${dest%%.mustache}
		mustache $view $file > $dest
	else
		echo "  copy $rel"
		cp $file $dest
	fi
done
