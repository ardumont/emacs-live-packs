;; File loaded automatically the default emacs-live packs

(defun emacs-live-packs/add-live-packs (path packs) "Utility function to help in installing emacs-live-packs (bunch of user packs)"
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
                                   "stumpwm-pack"))
