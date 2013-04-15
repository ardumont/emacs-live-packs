(install-packs '(;; to code in common-lisp
                 slime
                 slime-repl
                 ediff))

;; common-lisp setup

(setq inferior-lisp-program "/usr/bin/clisp")

;; add paredit mode to different modes

(dolist (hook '(lisp-mode
                inferior-lisp-mode-hook
                slime-repl-mode-hook
                nrepl-mode-hook))
  (add-hook hook (lambda () (paredit-mode +1))))

;; slime repl setup

; add color into the repl via clojure-jack-in
(add-hook 'slime-repl-mode-hook
         (defun clojure-mode-slime-font-lock ()
           (let (font-lock-mode)
             (clojure-mode-font-lock-setup))))

(setq slime-net-coding-system 'utf-8-unix)

;; other bindings that uses personal functions
;; Load bindings config
(live-load-config-file "bindings.el")
