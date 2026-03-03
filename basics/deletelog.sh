#!/bin/bash

echo "This script delete file which are older then 30 days"

path="$1"

echo $path

find $path -mtime +30 -delete

if [$? -eq 0];
then
	echo "files are successfully deleted"
else
	echo "deletetion was having some issue"
fi



