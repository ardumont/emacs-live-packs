;; a utility function to help in installing emacs-live packs
(defun add-live-packs (path packs)
  "Adding live packs at startup"
  (live-add-packs
   (mapcar
    (lambda (pack)
      (concat path pack))
    packs)))

;; all the other packs needed
(add-live-packs "~/.emacs-live-packs/"
                '(;; installing emacs repositories (melpa, milkbox, marmalade) and the install-packs utility function
                  "install-packages-pack"
                  ;; "el-get-pack"
                  "buffer-pack"
                  ;; a pack to mess around until drying stuff
                  "scratch-pack"
                  ;; a setup blog pack for wordpress
                  "blog-pack"
                  "haskell-pack"
                  ;; setup org-mode
                  "orgmode-pack"
                  "lisp-pack"
                  "git-pack"
                  ;; setup mail credentials
                  "mail-pack"
                  "shell-pack"
                  "browser-pack"
                  ;; irc credential setup
                  "chat-pack"
                  "clojure-pack"
                  ;; nrepl override bindings from nrepl
                  "nrepl-pack"
                  "clojurescript-pack"
                  "caml-pack"
                  ;; adding stuff regarding emacs modeline
                  "modeline-pack"
                  "twitter-pack"
                  "puppet-pack"
                  ;; chrome editing textarea using emacs
                  "chrome-pack"
                  "macro-pack"
                  "scala-pack"
                  "elisp-pack"
;;                  "groovy-pack"
                  "php-pack"
                  "ctags-pack"))
