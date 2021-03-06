#!bash
#
# bash/zsh completion support for Fabric
#
# Copyright (C) 2013 Danilo Dellaquila <danilo@dellaquila.es>
# Distributed under the GNU General Public License, version 3.0.
# http://www.gnu.org/licenses/gpl.html
#
# To install just save the script at /etc/bash_completion.d see
# http://danilodellaquila.com/blog/how-to-add-bash-completion-to-fabric
#
 
_fab()
{
    local cur commands
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    commands=$(for x in `fab --list |grep -v commands`; do echo ${x} ; done)
    COMPREPLY=( $(compgen -W "${commands}" -- ${cur}) )
    return 0
}
complete -F _fab fab
