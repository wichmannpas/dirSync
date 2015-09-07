DirSync
=======

This is a simple shell script that watches a directory recursively for changes and triggers rsync to sync the directory to another directory or a remote host.

Requirements
------------

  * inotifywait
  * rsync

Usage
-----

Create the directory *.dirSync* inside your home directory and place configuration files in there. You can use the file *sampleConfig* of the source tree as an example.

Run the script whenever you want a directory to be interactively synchronized. Specify the name of your configuration file as parameter.
Kill it (using i.e. *^C*) to stop sync.

You may want to place this script somewhere in your path, i.e. at /usr/local/bin, in order to be able to start the tool without the necessity to specify the whole part each time you run the script.

License
-------

Copyright 2015 Pascal Wichmann

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.

   
----------------------------

Scripts and documentation written by Pascal Wichmann, copyright (c) 2015
