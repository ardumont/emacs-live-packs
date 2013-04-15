#!/bin/bash -xe

WDIR=$(dirname $0)

ln -sf $WDIR/.emacs-live.el ~/.emacs-live.el
ln -sf $WDIR/../emacs-live-packs ~/.emacs-live-packs
