#!/bin/sh -xe

cd "$(dirname "$0")"

CURRENT_EMACS=${EMACS:-$(which emacs)}
#CURRENT_CMD=$(which cask)

echo "*** Emacs version ***"
echo "CURRENT_EMACS = $CURRENT_EMACS"
"$CURRENT_EMACS" --version
#echo "CURRENT_CMD = $CURRENT_CMD"

$CURRENT_EMACS --version

$CURRENT_EMACS -nw -e "(kill-emacs)"
