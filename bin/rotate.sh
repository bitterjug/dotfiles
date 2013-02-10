# Set rotation for screen and wacom
orientation="$1"

function rotatewacom(){
xsetwacom --list devices |\
    cut -d: -f2 |\
    while read ID type
    do
        xsetwacom --set $ID Rotate $1
    done
}

function rotatescreen(){
    xrandr --orientation $1
}

case "$orientation" in 
    left)
        rotatescreen left 
        rotatewacom ccw
        ;;
    inverted)
        rotatescreen inverted 
        rotatewacom half
        ;;
    right)
        rotatescreen right 
        rotatewacom cw
        ;;
    *) 
        rotatescreen normal 
        rotatewacom none
        ;;
esac

