;; java

;; https://github.com/senny/emacs-eclim

(add-to-list 'load-path (expand-file-name "~/repo/perso/emacs-eclim/"))
;; only add the vendor path when you want to use the libraries provided with emacs-eclim
(add-to-list 'load-path (expand-file-name "~/repo/perso/emacs-eclim/vendor"))
(require 'eclim)

(setq eclim-auto-save t)
(global-eclim-mode)

(require 'eclimd)

(custom-set-variables
 '(eclim-eclipse-dirs '("~/applications/eclipse"))
 '(eclim-executable "~/applications/eclipse/eclim"))

;; Displaying compilation error messages in the echo area
;; (setq help-at-pt-display-when-idle t)
;; (setq help-at-pt-timer-delay 0.1)
;; (help-at-pt-set-timer)

;; configuring auto-complete mode
;; ;; regular auto-complete initialization
;; (require 'auto-complete-config)
;; (ac-config-default)

;; ;; add the emacs-eclim source
;; (require 'ac-emacs-eclim-source)
;; (ac-emacs-eclim-config)

;; configuring company mode
;; (require 'company)
;; (require 'company-emacs-eclim)
;; (company-emacs-eclim-setup)
;; (global-company-mode t)
