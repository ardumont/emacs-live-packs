(defun add-packs (path packs)
  "Adding live packs at startup"
  (live-add-packs
   (mapcar
    (lambda (pack)
      (concat path pack))
    packs)))

(add-packs "~/.emacs-live-packs/" '("install-packages-pack"
                                    "scratch-pack"
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
                                    "modeline-pack"))
