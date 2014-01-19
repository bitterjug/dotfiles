#!/bin/bash
NOTEFILE=$HOME/SparkleShare/devjournal/devjournal.markdown
COMMAND="call append(line('$'), ['', join(['##', strftime('%F %R %A') ]),'',''])"
gvim -c"$COMMAND" "$NOTEFILE" -c"$" 