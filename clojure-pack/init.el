(install-packs '(;; midje (testing framework for clojure)
                 midje-mode))

(add-to-list 'auto-mode-alist '("\.dtm$" . clojure-mode))

(fset 'all-future-fact
      (lambda (&optional arg)
        "Make all midje (fact) calls be a future-fact."
        (interactive "p")
        (kmacro-exec-ring-item
         (quote ([134217788 134217765 102 97 99 116 32 return 102 117 116 117 114 101 45 102 97 99 116 32 return 33 24 19] 0 "%d"))
         arg)))

(fset 'all-fact
      (lambda (&optional arg)
        "Make all midje (future-fact) be a fact."
        (interactive "p")
        (kmacro-exec-ring-item (quote ("" 0 "%d")) arg)))

(defun my-nrepl-mode-setup ()
  (interactive)
  (require 'nrepl-ritz))

(add-hook 'nrepl-interaction-mode-hook 'my-nrepl-mode-setup)

;; (defun jack-in-once ()
;;   "Check the existence of a repl session (nrepl). If it doesn't exist, launch it."
;;   (interactive)
;;   (exists-session-or-spawn-it "*nrepl-server*" (lambda () (nrepl-ritz-jack-in nil))))

;; (add-hook 'clojure-mode-hook 'jack-in-once)

;; remove the limitation of emacs-live concerning the clojure nrepl
(defun nrepl-remove-limit-print-length ()
  (interactive)
  (nrepl-send-string-sync "(set! *print-length* nil)" "clojure.core"))

;; reset the limitation of emacs-live concerning the clojure nrepl
(defun nrepl-set-limit-print-length ()
  (interactive)
  (nrepl-send-string-sync "(set! *print-length* 100)" "clojure.core"))

;; Load bindings config
(live-load-config-file "bindings.el")
