(install-packs '(;; need org2blog as a glue between org-mode and wordpress
                 xml-rpc
                 org2blog))

;; hack - there is some dep that has been broken since punchagan separated org2blog and metaweblog.el (https://github.com/punchagan/metaweblog.el)
(live-add-pack-lib "metaweblog")

;; depends on netrc, xml-rpc
(require 'org2blog-autoloads)
(require 'netrc)
(require 'metaweblog)

;; load the entry tony-blog in the ~/.netrc, we obtain a hash-map with the needed data
(setq blog (netrc-machine (netrc-parse "~/.netrc") "tony-blog" t))

;; now enter the data in the org2blog list of blogs
(setq org2blog/wp-blog-alist
      '(("tony-blog"
         :url "http://adumont.fr/blog/xmlrpc.php"
         :username (netrc-get blog "login")
         :password (netrc-get blog "password"))))

(add-hook 'org-mode-hook 'org2blog/wp-mode)
