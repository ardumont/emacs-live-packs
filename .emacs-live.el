(defun add-packs (path packs)
  "Adding live packs at startup"
  (live-add-packs
   (mapcar
    (lambda (pack)
      (concat path pack))
    packs)))

(add-packs "~/.emacs-live-packs/" '("user-install-packages-pack"
                                    "user-pack"
                                    "user-blog-pack"
                                    "user-haskell-pack"
                                    "user-orgmode-pack"
                                    "user-lisp-pack"
                                    "user-buffer-pack"
                                    "user-git-pack"
                                    "user-mail-pack"
                                    "user-shell-pack"
                                    "user-browser-pack"
                                    "user-chat-pack"
                                    "user-clojure-pack"
                                    "user-nrepl-pack"
                                    "user-clojurescript-pack"
                                    "user-caml-pack"))
