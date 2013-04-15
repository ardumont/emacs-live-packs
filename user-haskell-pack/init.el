(install-packs '(haskell-mode
                 ghci-completion
                 ;; flymake-easy
                 ;; flymake-haskell-multi
                 ;; flymake-hlint
                 ))

;; (require 'flymake-haskell-multi)
;; (add-hook 'haskell-mode-hook 'flymake-haskell-multi-load)

;; (require 'flymake-hlint)
;; (add-hook 'haskell-mode-hook 'flymake-hlint-load)

(live-add-pack-lib "hs-lint.el")
(live-add-pack-lib "ac-haskell.el")

;;;;;;;;;;;;;;;;;;;;; haskell

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)

;; hslint on the command line only likes this indentation mode;
;; alternatives commented out below.
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

;; Ignore compiled Haskell files in filename completions
(add-to-list 'completion-ignored-extensions ".hi")

;;;;;;;;;;;;;;;;;;;;; load the general bindings

(defun flymake-haskell-init ()
  "When flymake triggers, generates a tempfile containing the
  contents of the current buffer, runs `hslint` on it, and
  deletes file. Put this file path (and run `chmod a+x hslint`)
  to enable hslint: https://gist.github.com/1241073"
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "hslint" (list local-file))))

(defun flymake-haskell-enable ()
  "Enables flymake-mode for haskell, and sets <C-c d> as command
  to show current error."
  (when (and buffer-file-name
             (file-writable-p
              (file-name-directory buffer-file-name))
             (file-writable-p buffer-file-name))
    (local-set-key (kbd "C-c d") 'flymake-display-err-menu-for-current-line)
    (flymake-mode t)))

;; Forces flymake to underline bad lines, instead of fully
;; highlighting them; remove this if you prefer full highlighting.
(custom-set-faces
 '(flymake-errline ((((class color)) (:underline "red"))))
 '(flymake-warnline ((((class color)) (:underline "yellow")))))

(require 'hs-lint)    ;; https://gist.github.com/1241059
(require 'haskell-ac) ;; https://gist.github.com/1241063

;; (defun my-haskell-mode-hook ()
;;   "hs-lint binding, plus autocompletion and paredit."
;;   (local-set-key "\C-cl" 'hs-lint)
;;   (setq ac-sources
;;         (append '(ac-source-yasnippet
;;                   ac-source-abbrev
;;                   ac-source-words-in-buffer
;;                   my/ac-source-haskell)
;;                 ac-sources))
;;   (dolist (x '(haskell literate-haskell))
;;     (add-hook
;;      (intern (concat (symbol-name x)
;;                      "-mode-hook"))
;;      'turn-on-paredit)))

(eval-after-load 'haskell-mode
  '(progn
     (require 'flymake)
     (push '("\\.l?hs\\'" flymake-haskell-init) flymake-allowed-file-name-masks)
     (add-hook 'haskell-mode-hook 'flymake-haskell-enable)
     ;; (add-hook 'haskell-mode-hook 'my-haskell-mode-hook))
     ))
