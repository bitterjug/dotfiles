VIRTUALENVWRAPPER="/usr/local/bin/virtualenvwrapper.sh"
if [ -f $VIRTUALENVWRAPPER ]; then
  source $VIRTUALENVWRAPPER
  export WORKON_HOME=$HOME/.virtualenvs
fi
