#!/bin/bash

sudo apt -y update

# Get fresh working
sudo apt -y install \
	git \
	curl

# Essentials
sudo apt -y install \
	xcape \
	neovim \
  silversearcher-ag \
  tmux \
  dconf-tools \
	gconf2 \
  xclip


# Applications
sudo apt -y install \
  keepassxc \
  nautilus-dropbox


# Now at last...
# Turn caps lock into control:
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:ctrl_modifier']"


# dev
sudo apt -y install \
  python-pip \

#
pip install --user neovim
