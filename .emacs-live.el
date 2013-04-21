(defun add-packs (path packs)
  "Adding live packs at startup"
  (live-add-packs
   (mapcar
    (lambda (pack)
      (concat path pack))
    packs)))

;; install setup regarding emacs repositories (elpa, marmalade, milkbox)
(add-packs "~/.emacs-live-packs/" '("install-packages-pack"))

;; HACK - will be moved elsewhere later
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

;; all the other packs needed
(add-packs "~/.emacs-live-packs" '("scratch-pack"
                                    "blog-pack"
                                    "haskell-pack"
                                    "orgmode-pack"
                                    "lisp-pack"
                                    "buffer-pack"
                                    "git-pack"
                                    "mail-pack"
                                    "shell-pack"
                                    "browser-pack"
                                    "chat-pack"
                                    "clojure-pack"
                                    "nrepl-pack"
                                    "clojurescript-pack"
                                    "caml-pack"
                                    "modeline-pack"
                                    "twitter-pack"))
