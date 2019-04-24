# Install universal ctags from source
TOOLS=$HOME/dev/tools
mkdir -p $TOOLS
cd $TOOLS

if cd ranger
then
    git pull
else
    git clone git@github.com:ranger/ranger.git
    cd ranger
fi

sudo python setup.py install --prefix=$HOME/.local --optimize=1 --record=install_log.txt
