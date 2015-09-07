#!/bin/sh
# This script watches a directory for changes and uploads them to a remote host via rsync
# Copyright (c) 2015 Pascal Wichmann

configDir="/home/$(echo $USER)/.dirSync/"

# try to load configuration
source $configDir/$1

inotifywait -r -m $dir -e moved_to -e modify -e attrib |
    while read path action file; do
	rsync -r $rsyncParams $dir $remote
    done
