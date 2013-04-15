(require 'gnus)

;; got this line from one of the tutorials. Seemed interesting enough
(setq gnus-invalid-group-regexp "[:`'\"]\\|^$")

;; standard way of getting imap going
(setq gnus-select-method
         '(nnimap "gmail"
          (nnimap-address "imap.gmail.com")
          (nnimap-server-port 993)
          (nnimap-stream ssl)))

;; set up smtp so we can send from gmail too:
(setq message-send-mail-function 'smtpmail-send-it
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials "~/.authinfo"
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587)

;;http://www.emacswiki.org/cgi-bin/wiki/GnusGmail
;;http://linil.wordpress.com/2008/01/18/gnus-gmail/

(add-hook 'gnus-group-mode-hook 'gnus-topic-mode)

;; Threads are nice!
(setq gnus-summary-thread-gathering-function
      'gnus-gather-threads-by-subject)

(setq gnus-posting-styles
       '((".*"
          (name "Antoine R. Dumont")
          ("X-URL" "http://adumont.fr/blog/"))))

(setq user-full-name "Antoine R. Dumont")
(setq user-mail-address "eniotna.t@gmail.com")
(setq send-mail-function 'smtpmail-send-it)
