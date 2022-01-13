FD=$(command -v fdfind)
if [ -x "${FD}" ]
then
  alias fd=${FD}
fi
