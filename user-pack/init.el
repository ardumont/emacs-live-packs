;; User pack init file
;;
;; User this file to initiate the pack configuration.
;; See README for more information.

;; my init.el snippets of code transformed brutally into a emacs-live live pack
;; (from emacs-live's init.el)

;; setup the path
(require 'exec-path-from-shell) ;; if not using the ELPA package
(exec-path-from-shell-initialize)

;; some text/font/color tweaks

(setq-default fill-column 120)
(set-face-background 'default "black")

(set-language-environment "UTF-8")
(blink-cursor-mode 1)

;; puppet-mode for the .pp file

(add-to-list 'auto-mode-alist '("\.pp$" . puppet-mode))

;; C-x C-l to lower case ; C-x C-u to upper case

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)

;; To dynamically extend emacs via macros

(defun save-macro (name)
  "save a macro. Take a name as argument and save the last
     defined macro under this name at the end of your .emacs"
     (interactive "SName of the macro :")  ; ask for the name of the macro
     (kmacro-name-last-macro name)         ; use this name for the macro
     (find-file user-init-file)            ; open ~/.emacs or other user init file
     (goto-char (point-max))               ; go to the end of the .emacs
     (newline)                             ; insert a newline
     (insert-kbd-macro name)               ; copy the macro
     (newline)                             ; insert a newline
     (switch-to-buffer nil))               ; return to the initial buffer

;; Load bindings config
(live-load-config-file "bindings.el")

;; edit-server
(if (and (daemonp) (locate-library "edit-server"))
     (progn
       (require 'edit-server)
       (setq edit-server-new-frame nil)
       (edit-server-start)))

;; Must-have setup for Emacs to operate like a modern application.
(setq
 ;; Do not show a splash screen.
 inhibit-splash-screen t
 ;; Show incomplete commands while typing them.
 echo-keystrokes 0.1
 ;; Flash the screen on errors.
 visible-bell t
 column-number-mode t)

;; Allow us to type "y" or "n" instead of "yes" or "no".
(defalias 'yes-or-no-p 'y-or-n-p)
