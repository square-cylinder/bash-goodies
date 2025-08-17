# Source this file to activate everything

[ -z "$EDITOR" ] && export EDITOR=vim

DIR=$(dirname ${BASH_SOURCE[0]})

. "$DIR/bashmarks.sh"
. "$DIR/aliases.sh"
. "$DIR/prompt.sh"

