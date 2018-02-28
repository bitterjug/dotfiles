#
GIT=$(which git)
function git {
  # echo "pausing wathc..." >&2
  pkill -TSTP -f watch.js
  $GIT $*
  local ret=$?
  # echo "resuming watch..." >&2
  pkill -CONT -f watch.js
  return $ret
}
