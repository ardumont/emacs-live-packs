;; File loaded automatically the default emacs-live packs

(live-use-dev-packs)

(defun emacs-live-packs/add-live-packs (path packs) "Utility function to help in installing emacs-live-packs (bunch of user packs)"
  (live-add-packs (mapcar (lambda (pack) (concat path pack)) packs)))

(emacs-live-packs/add-live-packs "~/.emacs-live-packs/"
                                 '("install-packages-pack";; installing emacs repositories (melpa, milkbox, marmalade) and the install-packs utility function
                                   "el-get-pack"
                                   "buffer-pack"          ;; a pack to mess around until drying stuff
                                   "scratch-pack"
                                   "blog-pack"            ;; a setup blog pack for wordpress
                                   "haskell-pack"
                                   "orgmode-pack"         ;; setup org-mode
                                   "lisp-pack"
                                   "git-pack"
                                   "mail-pack"            ;; setup mail credentials
                                   "shell-pack"
                                   "browser-pack"
                                   "chat-pack"            ;; irc credential setup
                                   "clojure-pack"
;;                                   "nrepl-pack"           ;; nrepl override bindings from nrepl
                                   "clojurescript-pack"
                                   "caml-pack"
                                   "modeline-pack"        ;; adding stuff regarding emacs modeline
                                   "twitter-pack"
                                   "puppet-pack"
;;                                   "chrome-pack"          ;; chrome editing textarea using emacs
                                   "macro-pack"
                                   "scala-pack"
                                   "elisp-pack"
                                   "groovy-pack"
                                   "php-pack"
                                   "ctags-pack"
                                   "prelude-pack"))

