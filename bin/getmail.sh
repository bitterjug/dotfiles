# Sync selected mail folders 
# By default only check the

# TODO: allow override UI, default to something quiet
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
        -a|--all) all="yes"; exit 0;;
	-h|--help) usage; exit 0;;
        *)  ;;
    esac
done

folders=`grep mailboxes $MUTTRC | cut -c 11- | sed -e 's/+Aptivate\\///g'| tr ' ' ,`

echo "all=  $all"
if [ "$all" = "yes" ] ; then
	echo "all"
	options=""
else
	echo "default"
	options="-f $folders"
fi

offlineimap $options
