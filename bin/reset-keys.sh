#!/bin/sh
# see http://askubuntu.com/questions/211851/how-to-set-keyboard-shortcuts-from-a-script

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up "['<Control><Super>k']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down "['<Control><Super>j']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left "['<Control><Super>h']"
# gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right "['<Control><Super>l']"

gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up "['<Shift><Control><Super>k']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down "['<Shift><Control><Super>j']"
# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left "['<Shift><Control><Super>h']"
# gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right "['<Shift><Control><Super>l']"

gsettings set org.gnome.settings-daemon.plugins.media-keys screensaver "['<Primary><Alt><Super>l']"

gsettings set org.gnome.desktop.wm.keybindings cycle-windows "['<Super>j', '<Super>l']"
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward "['<Super>k', '<Super>h']"
gsettings set org.gnome.desktop.wm.keybindings minimize  "['<Super>comma']"
gsettings set org.gnome.desktop.wm.keybindings maximize  "['<Super>Up', '<Super><Shift>k']"
gsettings set org.gnome.desktop.wm.keybindings unmaximize  "['<Super>Down', '<Super><Shift>j']"
gsettings set org.gnome.desktop.wm.keybindings close  "['<Alt>F4', '<Super>q']"
# gsettings set org.gnome.desktop.wm.keybindings raise-or-lower  "['<Super>period']"

gsettings set org.gnome.desktop.wm.keybindings switch-applications  "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward  "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows  "['<Alt>tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward  "['<Alt><Shift>tab']"

gsettings set org.gnome.mutter.keybindings toggle-tiled-left  "['<Super>Left', '<Super><Shift>h']"
gsettings set org.gnome.mutter.keybindings toggle-tiled-right  "['<Super>Right', '<Super><Shift>l']"

gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left  "['<Super><Shift>Left', '<Super><Control>h', '<Super>comma']"
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right  "['<Super><Shift>Left', '<Super><Control>l', '<Super>period']"
