# Sync selected mail folders 
# By default only check the mutt mailboxes

# TODO: serch the muttrc  like mutt does
MUTTRC=$HOME/.mutt/muttrc

PROGNAME=${0##*/}

usage () {
    cat <<EOUSE
    $PROGNAME 
      -a  --all         Sync all folders
      -m  --mailboxes   Sync mailboxes listed in ~/.mutt/muttrc
                        Default
      -f  --folders folder[,folder...]
                        Sync specific folders (not yet implemented)
      -h  --help        Show this message
EOUSE
}

all="no"
for opt in $@; do
    case $opt in
        -a|--all) all="yes";;
        -h|--help) usage; exit 0;;
        *)  ;;
    esac
done


if [ "$all" = "yes" ] ; then
	options=""
else
    folders=`grep mailboxes $MUTTRC | cut -c 11- | sed -e 's/+Aptivate\\///g'| tr ' ' ,`
	options="-f $folders"
fi

offlineimap $options
