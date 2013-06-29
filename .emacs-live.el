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
                  ;; buffer manipulation
                  "buffer-pack"
                  ;; a pack to mess around until drying stuff
                  "scratch-pack"
                  ;; a setup blog pack for wordpress
                  "blog-pack"
                  ;; haskell dev env
                  "haskell-pack"
                  ;; setup org-mode
                  "orgmode-pack"
                  ;; lisp dev env
                  "lisp-pack"
                  ;; setup regarding git
                  "git-pack"
                  ;; setup mail credentials
                  "mail-pack"
                  ;; shell manipulation
                  "shell-pack"
                  ;; browser manipulation
                  "browser-pack"
                  ;; irc credential setup
                  "chat-pack"
                  ;; clojure override bindings from emacs-live
                  "clojure-pack"
                  ;; nrepl override bindings from nrepl
                  "nrepl-pack"
                  ;; clojurescript setup
                  "clojurescript-pack"
                  ;; caml dev env
                  "caml-pack"
                  ;; adding stuff regarding emacs modeline
                  "modeline-pack"
                  ;; twitter credentials setup
                  "twitter-pack"
                  ;; some puppet related pack
                  "puppet-pack"
                  ;; chrome editing textarea using emacs
                  "chrome-pack"
                  ;; deal with macro
                  "macro-pack"
                  ;; ruby
                  ;;"ruby-pack"
                  "scala-pack"

                  ))
