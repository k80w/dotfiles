#!/bin/bash

view=settings.yml

templates=0
files=0

for file in $(find templates -mindepth 1 -type f -o -type l); do
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
	if [ "${file##*.}" == "mustache" ]; then
		echo "render $rel"
		dest=${dest%%.mustache}
		cat $view | ./huerotate.js | mustache - $file > $dest
		echo $((templates++)) > /dev/null
	else
		echo "  copy $rel"
		cp $file $dest
		echo $((files++)) > /dev/null
	fi
done

echo
echo $templates templates
echo $files files
echo $((templates + files)) total
