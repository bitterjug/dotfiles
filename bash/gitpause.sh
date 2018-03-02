# Pause watch.js during git command
GIT=$(which git)
function git {
  if [ "$1" == "rebase" ] || [ "$1" == "checkout" ] || [ "$1" == "merge" ] || [ "$1" == "reset" ] || [ "$1" == "pull" ] || [ "$1" == "revert" ] || [ "$1" == "stash" ]
  then
    echo -e "\e[1;31mPausing watch ... \e[0m" >&2
    pkill -TSTP -f watch.js
    $GIT $*
    local ret=$?
    echo -e "\e[1;31mResuming watch ... \e[0m" >&2
    pkill -CONT -f watch.js
    return $ret
  else
    $GIT $*
  fi
}
