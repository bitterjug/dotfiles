# Set rotation for screen and wacom
PROGNAME=${0##*/}
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

function orient(){
    stylus=`xsetwacom --list devices | head -1 | cut -d: -f2 | cut -f1`
    export CURRENT=`xsetwacom --get $stylus Rotate`
}

function flip(){
    orient
    case "$CURRENT" in
        none)
            rotatescreen inverted 
            rotatewacom half
            ;;
        *)
            rotatescreen normal 
            rotatewacom none
            ;;
    esac
}

function rotate(){
    orient
    case "$CURRENT" in
        none)
            rotatescreen right 
            rotatewacom cw
            ;;
        cw)
            rotatescreen inverted 
            rotatewacom half
            ;;
        half)
            rotatescreen left 
            rotatewacom ccw
            ;;
        *)
            rotatescreen normal 
            rotatewacom none
            ;;
    esac
}

function use(){
cat << EOF
$PROGNAME [option]

Where [option] is one of:

left|inverted|right|normal

    Set orientation

flip

    flip between normal and inverted

rotate

    rotate clockwise by a quarter

EOF
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
    normal) 
        rotatescreen normal 
        rotatewacom none
        ;;
    rotate)
        rotate
        ;;
    flip)
        flip
        ;;
    *)  use
        ;;
esac

