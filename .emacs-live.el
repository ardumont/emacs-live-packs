;;; emacs-live-packs.el --- emacs-live personal packs

;; Copyright (C) 2013 Antoine R. Dumont <eniotna.t AT gmail.com>

;; Author: Antoine R. Dumont <eniotna.t AT gmail.com>
;; Maintainer: Antoine R. Dumont <eniotna.t AT gmail.com>
;; Version: 0.0.1
;; Package-Requires:
;; Keywords: emacs-live packs
;; URL: https://github.com/ardumont/emacs-live-packs

;; This file is NOT part of GNU Emacs.

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING. If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;; emacs-live-packs. personal packs that extends the excellent emacs-live
;;
;;; Code:


(defun emacs-live-packs/add-live-packs (path packs)
  "Utility function to help in installing emacs-live-packs (bunch of user packs)"
  (live-add-packs (mapcar (lambda (pack) (concat path pack)) packs)))

(emacs-live-packs/add-live-packs "~/.emacs-live-packs/"
                                 '("install-packages-pack"
                                   "theme-pack"
;;                                   "el-get-pack"
                                   "buffer-pack"
                                   "scratch-pack"
                                   "blog-pack"
                                   "haskell-pack"
                                   "orgmode-pack"
                                   "lisp-pack"
                                   "git-pack"
                                   "mail-pack"
                                   "shell-pack"
                                   "browser-pack"
                                   "chat-pack"
                                   "clojure-pack"
;;                                   "nrepl-pack"
                                   "clojurescript-pack"
                                   "caml-pack"
                                   "modeline-pack"
                                   "twitter-pack"
                                   "puppet-pack"
;;                                   "chrome-pack"
                                   "macro-pack"
                                   "scala-pack"
                                   "elisp-pack"
                                   "groovy-pack"
                                   "php-pack"
;;                                   "ctags-pack"
                                   "prelude-live-pack"
                                   "stumpwm-pack"
                                   "pres-pack"))

;;; emacs-live-packs.el ends here
