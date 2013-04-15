#!/bin/bash -xe

WDIR=$(dirname $0)

ln -nsf $WDIR/.emacs-live.el ~/.emacs-live.el
ln -nsf $WDIR/../emacs-live-packs ~/.emacs-live-packs
