(require 'package)

;; inactivate any proxy (got some trouble with authentication)
(setq url-proxy-services '(("no_proxy" . "work\\.com")))

(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defun install-packs (packs)
  (dolist (p packs)
    (when (not (package-installed-p p))
      (package-install p))))

(defvar my-packages '(switch-window
                      ;; compile on the fly
                      flymake
                      flymake-shell
                      ;; some playtime with graphviz
                      graphviz-dot-mode
                      fold-dwim
                      htmlize
                      ;; to help in editing textare in chrome
                      edit-server
                      ;; to display puppet file
                      puppet-mode
                      ;; ghci-completion
                      ;; to make some awesome stuff on multiple line in one time
                      multiple-cursors
                      ;; move
                      move-text)
  "A list of packages to ensure are installed at launch.")

(install-packs my-packages)
