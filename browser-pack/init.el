(require 'browse-url)

(setq browse-url-browser-function 'browse-url-firefox
      browse-url-generic-program "/usr/bin/firefox")

;; (setq browse-url-browser-function 'browse-url-generic
;;       browse-url-generic-program "/usr/bin/google-chrome"
;;       browse-url-generic-args '("--no-proxy-server"))
