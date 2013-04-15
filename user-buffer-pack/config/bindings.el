;; Place your bindings here.

(global-set-key (kbd "C-c f") 'find-file-in-project)

;; To show/hide block of code
(require 'fold-dwim)
(global-set-key (kbd "C-c j") 'fold-dwim-toggle)
(global-set-key (kbd "C-c l") 'fold-dwim-hide-all)
(global-set-key (kbd "C-c ;") 'fold-dwim-show-all)

(global-set-key [remap find-tag] 'ido-find-tag)
(global-set-key (kbd "C-.") 'ido-find-file-in-tag-files)

(global-set-key (kbd "M-n") 'smart-symbol-go-forward)
(global-set-key (kbd "M-p") 'smart-symbol-go-backward)

(global-set-key (kbd "M-/") 'complete-symbol)

;; multiple-cursors
(require 'multiple-cursors)
(global-set-key (kbd "C-c n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c p") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)

;;
(global-set-key [remap goto-line] 'goto-line-with-feedback)

(global-set-key (kbd "C-x f") 'ido-recentf-open)
(global-set-key (kbd "C-x C-r") 'rgrep)

(global-set-key (kbd "C-c C-r") 'rename-current-buffer-file)

(global-set-key (kbd "C-c C-z") 'multi-term-once)
