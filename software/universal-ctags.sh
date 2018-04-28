# Install universal ctags from source
TOOLS=$HOME/dev/tools
mkdir -p $TOOLS
cd $TOOLS

sudo apt install -y \
  dh-autoreconf \
  build-essential \
  pkg-config

if cd ctags
then
    git pull
else
    git clone git@github.com:universal-ctags/ctags.git
    cd ctags
fi

./autogen.sh
./configure --prefix=$HOME
make
sudo make install
