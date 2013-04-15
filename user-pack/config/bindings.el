;; Place your bindings here.

(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)

;; make C-w to cut (even in paredit-mode)
(global-set-key (kbd "C-w") 'kill-region)
(define-key paredit-mode-map (kbd "C-w") 'kill-region)
(define-key paredit-mode-map (kbd "M-s") 'paredit-splice-sexp)
(define-key paredit-mode-map (kbd "M-S") 'paredit-split-sexp)

;; yank
(global-set-key (kbd "C-y") 'yank)

(global-set-key (kbd "C-v") (lambda () (interactive) (next-line 10)))
(global-set-key (kbd "M-v") (lambda () (interactive) (previous-line 10)))

;; some multi term tweaks
;;(require 'multi-term)
(global-set-key (kbd "C-c C-j") 'term-line-mode)

(global-set-key (kbd "M-/") 'complete-symbol)

(global-set-key (kbd "C-c r") 'revert-buffer)
