(install-packs '(;; jabber
                 jabber))

(require 'netrc)

;; load the entry tony-blog in the ~/.netrc, we obtain a hash-map with the needed data
(setq cred (netrc-machine (netrc-parse "~/.authinfo") "jabber" t))

;; Jabber client configuration
(setq jabber-account-list
      `((,(netrc-get cred "login")
         (:password . ,(netrc-get cred "password"))
         (:nickname . ,(netrc-get cred "login"))
     (:network-server . "talk.google.com")
     (:connection-type . ssl)
     (:port . 5223))))

(setq jabber-vcard-avatars-retrieve nil
      jabber-chat-buffer-show-avatar nil)
