# Taken from ranger manual, use ^O to use Ranger for cd

function ranger-cd {
  tempfile='/tmp/chosendir'
  ranger --choosedir="$tempfile" "${@:-$(pwd)}"
  test -f "$tempfile" &&
  if [ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]; then
    cd -- "$(cat "$tempfile")"
  fi
  rm -f -- "$tempfile"
}

# This binds Ctrl-O to ranger-cd:
bind '"\C-o":"ranger-cd\C-m"'
