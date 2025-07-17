# Source this file to activate everything

[ -z "$EDITOR" ] && EDITOR=vim

DIR=$(dirname ${BASH_SOURCE[0]})

. "$DIR/bashmarks.sh"

alias e="$EDITOR"

