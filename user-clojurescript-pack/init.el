;; pre-requisite, install some packs
(install-packs '(clojurescript-mode
                 cljsbuild-mode))

(add-to-list 'auto-mode-alist '("\.cljs$" . clojurescript-mode))

;; Load bindings config
(live-load-config-file "bindings.el")
