# Pause watch.js during git command
GIT=$(which git)
function git {
  if [ "$1" == "rebase" ] || [ "$1" == "checkout" ] || [ "$1" == "merge" ] || [ "$1" == "reset" ]
  then
    echo "pausing watch ..." >&2
    pkill -TSTP -f watch.js
    $GIT $*
    local ret=$?
    echo "resuming watch ..." >&2
    pkill -CONT -f watch.js
    return $ret
  else
    $GIT $*
  fi
}
