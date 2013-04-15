;; Some org-mode setup

;; org-mode for the .org file

(add-to-list 'auto-mode-alist '("\.org$" . org-mode))

(column-number-mode)

(setq org-directory "~/org")

(setq org-startup-indented t)

(setq org-log-done 'time)

(setq org-default-notes-file (concat org-directory "/notes.org"))

(setq org-tag-alist '(("howTo" . ?h)
                      ("tech" . ?t)
                      ("emacs" . ?e)
                      ("orgMode" . ?o)
                      ("faq" . ?f)
                      ("firefox")
                      ("conkeror")
                      ("linux")))

(setq org-todo-keywords
   '((sequence "TODO" "IN-PROGRESS" "PENDING" "|"  "DONE" "FAIL" "DELEGATED" "CANCELLED")))

;; modifying the color
(setq org-todo-keyword-faces
      '(("TODO"  . (:foreground "firebrick2" :weight bold))
        ("IN-PROGRESS"  . (:foreground "olivedrab" :weight bold))
        ("PENDING"  . (:foreground "sienna" :weight bold))
        ("DONE"  . (:foreground "forestgreen" :weight bold))
        ("DELEGATED"  . (:foreground "dimgrey" :weight bold))
        ("FAILED"  . (:foreground "steelblue" :weight bold))
        ("CANCELED"  . shadow)))

;; babel

(org-babel-do-load-languages
 'org-babel-load-languages
 '((haskell . t)
   (emacs-lisp . nil)
   (sh . t)
   (clojure . t)
   (java . t)
   (ruby . t)
   (perl . t)
   (python . t)))

(setq org-fontify-done-headline t)
(custom-set-faces
 '(org-done ((t (:foreground "PaleGreen"
                 :weight normal
                 :strike-through t))))
 '(org-headline-done
            ((((class color) (min-colors 16) (background dark))
              (:foreground "LightSalmon" :strike-through t)))))

;; Be able to reactivate the touchpad for an export html (as my touchpad is deactivated when in emacs)

(defun run-shl (&rest cmd)
  "A simpler command to run-shell-command with multiple params"
  (shell-command-to-string (apply #'concatenate 'string cmd)))

(defun toggle-touchpad-manual (status)
  "Activate/Deactivate the touchpad depending on the status parameter (0/1)."
  (run-shl "toggle-touchpad-manual.sh " status))

(add-hook 'org-export-html-final-hook
          (lambda () (toggle-touchpad-manual "1")))

(defun myorg-update-parent-cookie ()
  (when (equal major-mode 'org-mode)
    (save-excursion
      (ignore-errors
        (org-back-to-heading)
        (org-update-parent-todo-statistics)))))

(defadvice org-kill-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

(defadvice kill-whole-line (after fix-cookies activate)
  (myorg-update-parent-cookie))

;; Load bindings config
(live-load-config-file "bindings.el")
