emacs-live-packs
================

My emacs-live packs setup to use with the most excellent [emacs-live](https://github.com/overtone/emacs-live).

# pack list

Some pack still need some lovin' but most are ready:

- [install-packages-pack](https://github.com/ardumont/install-packages-pack)  some installation repository setup + function to install list of packages
- [scratch-pack](https://github.com/ardumont/scratch-pack)                    not yet sorted out stuff
- [blog-pack](https://github.com/ardumont/blog-pack)                          blog setup to rapidly post article from org-mode to wordpress
- [haskell-pack](https://github.com/ardumont/haskell-pack)                    haskell environment setup
- [orgmode-pack](https://github.com/ardumont/orgmode-pack)                    some org-mode specificities
- [lisp-pack](https://github.com/ardumont/lisp-pack)                          lisp environment setup
- [buffer-pack](https://github.com/ardumont/buffer-pack)                      some buffer manipulation functions
- [git-pack](https://github.com/ardumont/git-pack)                            git specific setup
- [mail-pack](https://github.com/ardumont/mail-pack)                          email setup
- [shell-pack](https://github.com/ardumont/shell-pack)                        shell setup
- [browser-pack](https://github.com/ardumont/browser-pack)                    browser specific tryouts
- [chat-pack](https://github.com/ardumont/chat-pack)                          irc setup
- [clojure-pack](https://github.com/ardumont/clojure-pack)                    clojure override from emacs-live's defaults + other stuff
- [nrepl-pack](https://github.com/ardumont/nrepl-pack)                        nrepl override setup
- [clojurescript-pack](https://github.com/ardumont/clojurescript-pack)        clojurescript setup
- [caml-pack](https://github.com/ardumont/caml-pack)                          some caml setup
- [twitter-pack](https://github.com/ardumont/twitter-pack)                    twitter setup
- [puppet-pack](https://github.com/ardumont/puppet-pack)                      puppet setup
- [chrome-pack](https://github.com/ardumont/chrome-pack)                      chrome setup
- [macro-pack](https://github.com/ardumont/macro-pack)                        macro setup

# install

## pre-requisite

### emacs-live

Install [emacs-live](https://github.com/overtone/emacs-live), you won't regret it!

### packs

If you want to use one of those packs, you need to also install one by default, [install-packages-pack](https://github.com/ardumont/install-packages-pack).

This one is in charge of setuping different repositories (marmalade, milkbox, elpa, etc...).
Also, it installs a utility function `install-packs` to download packages from those repositories.
This utility function is used throughout all the [referenced packs](#pack-list).

## clone

Clone the repository.

```sh
git clone git@github.com:ardumont/emacs-live-packs.git --recursive
```

## deploy

Launch the deployer:

```sh
/path/to/emacs-live-packs/deploy.sh
```

This will trigger the creation of 2 links in your home folder.

Example:

```sh
tony@dagobah(0,43,) 15:30:39 ~/repo/perso/emacs-live-packs (master) $ ll ~/.emacs*
lrwxrwxrwx 1 tony tony 32 déc.  18 03:28 /home/tony/.emacs.d -> /home/tony/repo/perso/emacs-live
lrwxrwxrwx 1 tony tony 53 avril 15 15:30 /home/tony/.emacs-live.el -> /home/tony/repo/perso/emacs-live-packs/.emacs-live.el
lrwxrwxrwx 1 tony tony 39 avril 15 12:38 /home/tony/.emacs-live-packs -> /home/tony/repo/perso/emacs-live-packs/
```

## start

Now start emacs.

```sh
emacs --daemon
```

This will install emacs packages needed if they are not already installed.

```sh
tony@dagobah (0,24,) 15:30:32 ~/repo/perso/emacs-live-packs (master) $ emacs --daemon

Warning: due to a long standing Gtk+ bug
http://bugzilla.gnome.org/show_bug.cgi?id=85715
Emacs might crash when run in daemon mode and the X11 connection is unexpectedly lost.
Using an Emacs configured with --with-x-toolkit=lucid does not have this problem.
("emacs")
Loading 00debian-vars...
Loading 00debian-vars...done
Loading /etc/emacs/site-start.d/50dictionaries-common.el (source)...
Loading debian-ispell...
Loading /var/cache/dictionaries-common/emacsen-ispell-default.el (source)...
Loading /var/cache/dictionaries-common/emacsen-ispell-default.el (source)...done
Loading debian-ispell...done
Loading /var/cache/dictionaries-common/emacsen-ispell-dicts.el (source)...
Loading /var/cache/dictionaries-common/emacsen-ispell-dicts.el (source)...done
Loading /etc/emacs/site-start.d/50dictionaries-common.el (source)...done
Loading /home/tony/.emacs.d/manifest.el (source)...
Loading /home/tony/.emacs.d/manifest.el (source)...done
Loading /home/tony/.emacs.d/lib/live-core.el (source)...
Loading /home/tony/.emacs.d/lib/live-core.el (source)...done
Loading /home/tony/.emacs-live.el (source)...
Loading /home/tony/.emacs-live.el (source)...done
Live pack lib dir: ~/.emacs.d/packs/live/foundation-pack/lib/
Loading /home/tony/.emacs.d/packs/live/foundation-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/info.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/auto-compile-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/auto-compile-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/backup-dir-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/backup-dir-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/util-fns.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/util-fns.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/built-in.el (source)...
Loading /home/tony/.emacs.d/tmp/recentf...
Loading /home/tony/.emacs.d/tmp/recentf...done
Cleaning up the recentf list...
Cleaning up the recentf list...done (0 removed)
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/built-in.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/cosmetic.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/cosmetic.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/ido-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/ido-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/smex-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/smex-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/tramp-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/tramp-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/mouse-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/mouse-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/ibuffer-git-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/ibuffer-git-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/key-chord-conf.el (source)...
Key Chord mode on
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/key-chord-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/window-number-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/window-number-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/recentf-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/recentf-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/elisp-slime-nav-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/elisp-slime-nav-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/popwin-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/popwin-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/shell-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/shell-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/spelling-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/spelling-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/lisp-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/lisp-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/win-switch-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/win-switch-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/zone-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/zone-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/monkey-patch.el (source)...
Loading /home/tony/.emacs.d/packs/live/foundation-pack/config/monkey-patch.el (source)...done
Loading /home/tony/.emacs.d/packs/live/foundation-pack/init.el (source)...done
Live pack lib dir: ~/.emacs.d/packs/live/colour-pack/lib/
Loading /home/tony/.emacs.d/packs/live/colour-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/live/colour-pack/info.el (source)...done
Loading /home/tony/.emacs.d/packs/live/colour-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/live/colour-pack/config/colour-theme-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/colour-pack/lib/cyberpunk.el (source)...
Loading /home/tony/.emacs.d/packs/live/colour-pack/lib/cyberpunk.el (source)...done
Loading /home/tony/.emacs.d/packs/live/colour-pack/lib/gandalf.el (source)...
Loading /home/tony/.emacs.d/packs/live/colour-pack/lib/gandalf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/colour-pack/config/colour-theme-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/colour-pack/config/live-fontify-hex-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/colour-pack/config/live-fontify-hex-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/colour-pack/config/live-fontify-hex-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/colour-pack/config/live-fontify-hex-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/colour-pack/init.el (source)...done
Live pack lib dir: ~/.emacs.d/packs/live/clojure-pack/lib/
Loading /home/tony/.emacs.d/packs/live/clojure-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/info.el (source)...done
Recompiling /home/tony/.emacs.d/packs/live/clojure-pack/init.el...
init.el:6:1:Error: Cannot open load file: uuid
Recompiling /home/tony/.emacs.d/packs/live/clojure-pack/init.el...done
Loading /home/tony/.emacs.d/packs/live/clojure-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/paredit-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/paredit-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/mic-paren-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/mic-paren-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/highlight-flash-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/highlight-flash-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/clojure-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/clojure-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/auto-complete-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/auto-complete-conf.el (source)...done
Recompiling /home/tony/.emacs.d/packs/live/clojure-pack/config/nrepl-conf.el...
nrepl-conf.el:2:1:Error: Cannot open load file: nrepl
Recompiling /home/tony/.emacs.d/packs/live/clojure-pack/config/nrepl-conf.el...done
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/nrepl-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/clojure-pack/config/nrepl-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/clojure-pack/init.el (source)...done
Live pack lib dir: ~/.emacs.d/packs/live/lang-pack/lib/
Loading /home/tony/.emacs.d/packs/live/lang-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/info.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/yaml-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/yaml-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/ioke-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/ioke-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/auto-modes.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/auto-modes.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/ruby-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/ruby-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/markdown-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/markdown-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/supercollider-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/supercollider-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/actionscript-conf.el (source)...
Loading actionscript-config...
Loading actionscript-config...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/actionscript-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/js2-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/js2-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/glsl-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/lang-pack/config/glsl-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/lang-pack/init.el (source)...done
Live pack lib dir: ~/.emacs.d/packs/live/power-pack/lib/
Loading /home/tony/.emacs.d/packs/live/power-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/info.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/volatile-highlights-conf.el (source)...
Warning: ad-Orig-kill-region called with 3 arguments, but accepts only 2
Loading /home/tony/.emacs.d/packs/live/power-pack/config/volatile-highlights-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/yasnippet-conf.el (source)...
[yas] Discovered there was already  *Compiler Input* in emacs-lisp-mode
[yas] Loading compiled snippets from /home/tony/.emacs.d/etc/snippets/emacs-lisp-mode
[yas] Prepared just-in-time loading for ~/.emacs.d/etc/snippets
[yas] Reloaded everything (snippets will load just-in-time)....
Loading /home/tony/.emacs.d/packs/live/power-pack/config/yasnippet-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/undo-tree-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/undo-tree-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/refheap-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/refheap-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/scratch-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/scratch-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/highlight-tail-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/highlight-tail-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/gist-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/gist-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/browse-kill-ring-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/browse-kill-ring-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/expand-region-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/expand-region-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/ace-jump-mode-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/ace-jump-mode-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/multiple-cursors-conf.el (source)...
Warning: reference to free variable `multiple-cursors-mode'
Warning: reference to free variable `mc--read-char'
Warning: assignment to free variable `mc--read-char'
Warning: reference to free variable `multiple-cursors-mode'
Warning: reference to free variable `mc--read-quoted-char'
Warning: assignment to free variable `mc--read-quoted-char'
Warning: reference to free variable `rectangular-region-mode'
Warning: reference to free variable `rectangular-region-mode'
Loading /home/tony/.emacs.d/packs/live/power-pack/config/multiple-cursors-conf.el (source)...done
Recompiling /home/tony/.emacs.d/packs/live/power-pack/config/git-gutter-conf.el...
[yas] Loading for `text-mode', just-in-time: (yas--load-directory-1 /home/tony/.emacs.d/etc/snippets/text-mode (quote text-mode) (quote nil))!
[yas] Loading compiled snippets from /home/tony/.emacs.d/etc/snippets/text-mode
git-gutter-conf.el:2:1:Error: Cannot open load file: git-gutter
Recompiling /home/tony/.emacs.d/packs/live/power-pack/config/git-gutter-conf.el...done
Loading /home/tony/.emacs.d/packs/live/power-pack/config/git-gutter-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/power-pack/config/git-gutter-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/power-pack/init.el (source)...done
Live pack lib dir: ~/.emacs.d/packs/live/git-pack/lib/
Loading /home/tony/.emacs.d/packs/live/git-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/live/git-pack/info.el (source)...done
Loading /home/tony/.emacs.d/packs/live/git-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/live/git-pack/config/magit-conf.el (source)...
Loading /home/tony/.emacs.d/packs/live/git-pack/config/magit-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/live/git-pack/init.el (source)...done
Live pack lib dir: ~/.emacs.d/packs/live/bindings-pack/lib/
Loading /home/tony/.emacs.d/packs/live/bindings-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/live/bindings-pack/info.el (source)...done
Loading /home/tony/.emacs.d/packs/live/bindings-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/live/bindings-pack/config/default-bindings.el (source)...
Loading /home/tony/.emacs.d/packs/live/bindings-pack/config/default-bindings.el (source)...done
Loading /home/tony/.emacs.d/packs/live/bindings-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/install-packages-pack/lib/
Loading /home/tony/.emacs-live-packs/install-packages-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/install-packages-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/install-packages-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/install-packages-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/pack/lib/
Loading /home/tony/.emacs-live-packs/pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/blog-pack/lib/
Loading /home/tony/.emacs-live-packs/blog-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/blog-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/blog-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/blog-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/haskell-pack/lib/
Loading /home/tony/.emacs-live-packs/haskell-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/haskell-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/haskell-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/haskell-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/orgmode-pack/lib/
Loading /home/tony/.emacs-live-packs/orgmode-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/orgmode-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/orgmode-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/orgmode-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/orgmode-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/orgmode-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/lisp-pack/lib/
Loading /home/tony/.emacs-live-packs/lisp-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/lisp-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/lisp-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/lisp-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/lisp-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/lisp-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/buffer-pack/lib/
Loading /home/tony/.emacs-live-packs/buffer-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/buffer-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/buffer-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/buffer-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/buffer-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/buffer-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/git-pack/lib/
Loading /home/tony/.emacs-live-packs/git-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/git-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/git-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/git-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/mail-pack/lib/
Loading /home/tony/.emacs-live-packs/mail-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/mail-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/mail-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/mail-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/shell-pack/lib/
Loading /home/tony/.emacs-live-packs/shell-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/shell-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/shell-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/shell-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/browser-pack/lib/
Loading /home/tony/.emacs-live-packs/browser-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/browser-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/browser-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/browser-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/chat-pack/lib/
Loading /home/tony/.emacs-live-packs/chat-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/chat-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/chat-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/chat-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/clojure-pack/lib/
Loading /home/tony/.emacs-live-packs/clojure-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/clojure-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/clojure-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/clojure-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/clojure-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/clojure-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/nrepl-pack/lib/
Loading /home/tony/.emacs-live-packs/nrepl-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/nrepl-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/nrepl-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/nrepl-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/nrepl-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/nrepl-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/clojurescript-pack/lib/
Loading /home/tony/.emacs-live-packs/clojurescript-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/clojurescript-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/clojurescript-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/clojurescript-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/clojurescript-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/clojurescript-pack/init.el (source)...done
Live pack lib dir: ~/.emacs-live-packs/caml-pack/lib/
Loading /home/tony/.emacs-live-packs/caml-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/caml-pack/info.el (source)...done
Loading /home/tony/.emacs-live-packs/caml-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/caml-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/caml-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/caml-pack/init.el (source)...done
Starting Emacs daemon.
```
