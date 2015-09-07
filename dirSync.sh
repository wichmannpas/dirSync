#!/bin/sh
# This script watches a directory for changes and uploads them to a remote host via rsync
# Copyright (c) 2015 Pascal Wichmann

configDir="/home/$(echo $USER)/.dirSync/"

if [ "$1" == "-h" ] || [ "$1" == "" ]; then
  echo "Usage: dirSync profilename (config directory specified inside this shell script)"
  exit 0
fi

# try to load configuration
source $configDir/$1

inotifywait -r -m $dir -e moved_to -e modify -e attrib |
    while read path action file; do
	echo "upload"
	rsync -r $rsyncParams $dir $remote
    done
