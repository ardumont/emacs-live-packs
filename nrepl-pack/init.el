(install-packs '(nrepl-ritz))

;; to hide *nrepl-connection* and *nrepl-server* buffer (type SPC when C-x b to see them)
(setq nrepl-hide-special-buffers t)

;; enable stacktrace in buffer
;;(setq nrepl-popup-stacktraces nil)

;; enable stacktrace in repl
;;(setq nrepl-popup-stacktraces-in-repl nil)

;; enable camel case for M-f and M-b
(add-hook 'nrepl-mode-hook 'subword-mode)

(live-load-config-file "bindings.el")
