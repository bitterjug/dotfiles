#!/bin/bash
clear
sysconfcpus -n 1 make elm-dev
if [ $? == 0 ]
then
  MSG="Compiled OK"
else
  MSG="Errors!"
fi
notify-send $MSG --icon=/home/skipperm/Documents/elm/tangram-icon/elm-tangram.png
