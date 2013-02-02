set -o vi
# Depends on xdotool being installed
# alias vi='gvim --remote-tab-silent'
vi(){
    SERVER="MYGVIM"
    if [ -n "${1:+x}" ] 
    then
        gvim --servername $SERVER --remote-tab-silent "$*"
    else 
        VIM=`xdotool search --name $SERVER`
        if [ -n "${VIM:+x}" ]
        then
            gvim --servername $SERVER --remote-send :tabnew
        else
            gvim --servername $SERVER
        fi
    fi
    xdotool search --name $SERVER windowactivate
}
