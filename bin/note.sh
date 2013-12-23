#!/bin/bash
NOTEFILE=$HOME/"Ubuntu One"/Stuff/devjournal.md
SERVER=NOTE
COMMAND="call append(line('$'), ['', join(['##', strftime('%a %e-%b-%G %R') ]),'',''])"
gvim --servername $SERVER -c"$COMMAND" "$NOTEFILE" -c"$"

