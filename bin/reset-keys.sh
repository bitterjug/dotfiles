#!/bin/sh
# see http://askubuntu.com/questions/211851/how-to-set-keyboard-shortcuts-from-a-script

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Control><Primary><Alt>k']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Control><Primary><Alt>j']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Control><Primary><Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Control><Primary><Alt>l']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Shift><Control><Primary><Alt>k']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Shift><Control><Primary><Alt>j']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Shift><Control><Primary><Alt>h']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Shift><Control><Primary><Alt>l']"
