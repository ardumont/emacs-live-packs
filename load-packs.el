;; some packs were redefined and now use the same conventions as prelude/emacs (require is needed)
(mapc (lambda (pack-name-str)
        (require (intern pack-name-str) nil 'no-error)) emacs-live-packs/user-packs)
