;;; emacs-live-packs.el --- emacs-live user packs

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


;;
;; Read only
;;

(defun emacs-live-packs/add-live-packs (parent-dir)
 "Add all level PARENT-DIR subdirs to the `load-path'."
 (dolist (f (directory-files parent-dir))
   (let ((name (expand-file-name f parent-dir)))
     (when (and (file-directory-p name)
                (not (string-prefix-p "." f)))
       (add-to-list 'load-path name)
       (emacs-live-packs/add-live-packs name)))))

(emacs-live-packs/add-live-packs emacs-live-packs/home)

(defun live-load-pack (pack-dir)
  "Load a live pack. This is a dir that could contain either the
  files info.el and init.el or `pack-name`.el. Adds the packs's
  dir and lib dir to the load-path"
  (message (concat "\n\n==> Loading Emacs Live Pack: " pack-dir))
  (let* ((pack-name        (file-name-base (substring pack-dir 0 (1- (length pack-dir))))) ;; hurk
         (pack-dir         (file-name-as-directory pack-dir))
         (pack-info        (concat pack-dir "info.el"))
         (maybe-pack-init  (concat pack-dir "init.el")) ;; default init in emacs-live
         (maybe-pack-init2 (concat pack-dir pack-name ".el")) ;; I no longer use emacs-live's convention but emacs'
         (pack-init        (if (file-exists-p maybe-pack-init) maybe-pack-init maybe-pack-init2)))
    (setq live-current-pack-dir pack-dir)
    (live-clear-pack-info)
    (when (file-exists-p pack-info)
      (progn
        (load-file pack-info)
        (live-print-pack-info)))
    (add-to-list 'load-path pack-dir)
    (add-to-list 'load-path (live-pack-lib-dir))
    (when (file-exists-p pack-init)
      (load-file pack-init))
    (setq live-current-pack-dir nil)))

(defun emacs-live-packs/add-live-packs (path packs)
  "Utility function to help in installing emacs-live-packs (bunch of user packs)"
  (live-add-packs (mapcar (lambda (pack)
                            (expand-file-name (format "%s/%s" path pack)))
                          packs)));; let emacs-live load the pack

;; will need this for forcing the loading of the packs.
(setq custom-file "~/.emacs-live-packs/load-packs.el")

;;
;; Edit this part as you please (just keep the install-packages-pack)
;;
(defvar emacs-live-packs/home "~/.emacs-live-packs"
  "Home of the emacs-live-packs.")

(defvar emacs-live-packs/user-packs '("install-packages-pack"
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
                                      "pres-pack")
  "User's packs. Feel free to comment out the ones you do not want.")

;;
;; Read only
;;

;; (emacs-live-packs/add-live-packs emacs-live-packs/home
;;                                  emacs-live-packs/user-packs)

(mapc (lambda (pack-name-str)
        (require (intern pack-name-str) nil 'no-error)) emacs-live-packs/user-packs)

(provide 'emacs-live-packs)
;;; emacs-live-packs.el ends here
