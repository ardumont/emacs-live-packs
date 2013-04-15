(install-packs '(tuareg))

(require 'tuareg)

(defun switch-to-caml-buffer ()
  "Switch to the caml buffer if needed"
  (interactive)
  ;; will trigger a caml buffer if needed
  (tuareg-run-process-if-needed)
  (pop-to-buffer tuareg-interactive-buffer-name))

;; display-buffer--same-window-action (to permit the swich keeping the same window)
;; display-buffer--other-frame-action (in another frame)

;; multi line comments
(setq tuareg-comment-end-extra-indent 1)

;; make the interactive buffer scroll if needed
(setq tuareg-interactive-scroll-to-bottom-on-output t)

(live-load-config-file "bindings.el")
