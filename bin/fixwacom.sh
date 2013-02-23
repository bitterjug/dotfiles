#!/bin/bash
# Set tablet pc mode for the stylus
# Mark Skipper March 2011
#
STYLUS=`xsetwacom --list | grep STYLUS | sed -n 's/.*id: \([0-9]*\).*/\1/p'`
xsetwacom set $STYLUS TabletPCButton on
