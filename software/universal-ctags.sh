# Install universal ctags from source
TOOLS=$HOME/dev/tools
mkdir -p $TOOLS

sudo apt install -y \
  dh-autoreconf \
  build-essential \
  pkg-config

# Universal ctags
  cd $TOOLS
  if cd ctags
  then
    git pull
  else
    git clone https://github.com/universal-ctags/ctags.git
    cd ctags
  fi

./autogen.sh
./configure --prefix=$HOME
make
sudo make install
