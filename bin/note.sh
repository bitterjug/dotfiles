#!/bin/bash
NOTEFILE=$HOME/"Ubuntu One"/Stuff/devjournal.md
SERVER=NOTE
COMMAND="call append(line('$'), ['', join(['##', strftime('%F %R %A') ]),'',''])"
gvim --servername $SERVER -c"$COMMAND" "$NOTEFILE" -c"$" 

