#!/bin/sh
# This script watches a directory for changes and uploads them to a remote host via rsync
# Copyright (c) 2015 Pascal Wichmann

dir="/dir/to/be/watched/"
remote="user@host:/path/to/remote/dir/"


inotifywait -r -m $dir -e moved_to -e modify -e attrib |
    while read path action file; do
	rsync -r $dir $remote
    done
