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
  xclip


# System stuff
sudo apt -y install \
	gconf2 \


# Now at last...
# Turn caps lock into control:
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:ctrl_modifier']"

