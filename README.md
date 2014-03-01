emacs-live-packs [![Build Status](https://travis-ci.org/ardumont/emacs-live-packs.png?branch=master)](https://travis-ci.org/ardumont/emacs-live-packs)
================

My emacs-live packs setup to use with the most excellent [emacs-live](https://github.com/overtone/emacs-live).

# Pack list

Some packs still need some lovin' but most are ready:

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
- [caml-pack](https://github.com/ardumont/caml-pack)                          ML family languages setup
- [twitter-pack](https://github.com/ardumont/twitter-pack)                    Twitter setup
- [puppet-pack](https://github.com/ardumont/puppet-pack)                      Puppet setup
- [chrome-pack](https://github.com/ardumont/chrome-pack)                      Chrome setup
- [macro-pack](https://github.com/ardumont/macro-pack)                        Macro setup
- [scala-pack](https://github.com/ardumont/scala-pack)                        Scala pack
- [lisp-pack](https://github.com/ardumont/lisp-pack)                          All lisp (clojure, common-lisp) setup pack
- [elisp-pack](https://github.com/ardumont/elisp-pack)                        Emacs-lisp pack (more specific than the previous one)
- [ctags-pack](https://github.com/ardumont/ctags-pack)                        Add packs tag generation to help in browsing in various dev environment
- [el-get-pack](https://github.com/ardumont/el-get-pack)                      Attempt to permit the use of el-get
- [groovy-pack](https://github.com/ardumont/groovy-pack)                      Pack to add groovy mode
- [modeline-pack](https://github.com/ardumont/modeline-pack)                  Improve modeline rendering
- [php-pack](https://github.com/ardumont/php-pack)                            PHP mode
- [prelude-pack](https://github.com/ardumont/prelude-pack)                    Add some prelude greatness
- [stumpwm-pack](https://github.com/ardumont/stumpwm-pack)                    Stumpwm tinkering from the repl

*Note*
This pack is an orchestrator.
You still need to setup those packs independently for the overall to be fully functional.
Report yourself to each pack's README.md file to know what are those steps.

# Install

## Pre-requisite

### Emacs-Live

Install [emacs-live](https://github.com/overtone/emacs-live), you won't regret it!

Long story short:

```sh
git clone git://github.com/overtone/emacs-live.git ~/.emacs.d
```

## Clone

Clone the repository.

```sh
git clone git@github.com:ardumont/emacs-live-packs.git --recursive
```

## Packs

### Default pack needed

If you want to use one of those packs, you need at minimum [install-packages-pack](https://github.com/ardumont/install-packages-pack).
This one is in charge of setuping different repositories (marmalade, milkbox, elpa, etc...).

Also, it installs a utility function `install-packs` to download packages from those repositories.
This utility function is used throughout all the [referenced packs](#pack-list).

### Adding/Removing packs

To add or remove packs, simply edit the `.emacs-live.el` and add or remove packs from the list.

For example, to simply install orgmode-pack and the blog-pack, do as follow:
```elisp
;; all the other packs needed
(add-live-packs "~/.emacs-live-packs/" '(;; installing emacs repositories (melpa, milkbox, marmalade) and the install-packs utility function
                                         "install-packages-pack"
                                         ;; setup org-mode
                                         "orgmode-pack"
                                         ;; a setup blog pack for wordpress
                                         "blog-pack"))

```

## Deploy

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

## Start

Now start emacs.

```sh
emacs --daemon
```

This will install emacs packages needed if they are not already installed.

```sh
# tony at dagobah in ~/repo/perso/emacs-live-packs on git:master o [10:23:28]
$ start-emacs.sh
+ emacs --daemon

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
Loading /etc/emacs/site-start.d/50windows-el.el (source)...
Loading /etc/emacs/site-start.d/50windows-el.el (source)...done


;;
;;     MM""""""""`M
;;     MM  mmmmmmmM
;;     M`      MMMM 88d8b.d8b. .d8888b. .d8888b. .d8888b.
;;     MM  MMMMMMMM 88''88'`88 88'  `88 88'  `"" Y8ooooo.
;;     MM  MMMMMMMM 88  88  88 88.  .88 88.  ...       88
;;     MM        .M dP  dP  dP `88888P8 '88888P' '88888P'
;;     MMMMMMMMMMMM
;;
;;         M""MMMMMMMM M""M M""MMMMM""M MM""""""""`M
;;         M  MMMMMMMM M  M M  MMMMM  M MM  mmmmmmmM
;;         M  MMMMMMMM M  M M  MMMMP  M M`      MMMM
;;         M  MMMMMMMM M  M M  MMMM' .M MM  MMMMMMMM
;;         M  MMMMMMMM M  M M  MMP' .MM MM  MMMMMMMM
;;         M         M M  M M     .dMMM MM        .M
;;         MMMMMMMMMMM MMMM MMMMMMMMMMM MMMMMMMMMMMM


Loading /home/tony/.emacs.d/manifest.el (source)...
Loading /home/tony/.emacs.d/manifest.el (source)...done
Loading /home/tony/.emacs.d/lib/live-core.el (source)...
Loading /home/tony/.emacs.d/lib/live-core.el (source)...done
Loading /home/tony/.emacs-live.el (source)...
Loading /home/tony/.emacs-live.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/foundation-pack/
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/info.el (source)...done
==> Pack name: emacs-live-foundation-pack
==> Pack Version: 1.0beta24
==> Pack Description: The foundation stone on top of which all packs are built. Sets the visual theme
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/auto-compile-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/auto-compile-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/backup-dir-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/backup-dir-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/util-fns.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/util-fns.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/built-in.el (source)...
Loading /home/tony/.emacs.d/tmp/recentf...
Loading /home/tony/.emacs.d/tmp/recentf...done
Cleaning up the recentf list...
File /home/tony/repo/perso/arduino-lab/.nrepl-port removed from the recentf list
Cleaning up the recentf list...done (1 removed)
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/built-in.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/cosmetic.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/cosmetic.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/ido-conf.el (source)...
~/.emacs.d/packs/stable/foundation-pack/lib/flx/flx-ido.el:Warning: reference
    to free variable `flx-ido-mode'
~/.emacs.d/packs/stable/foundation-pack/lib/flx/flx-ido.el:Warning: reference
    to free variable `flx-ido-mode'
~/.emacs.d/packs/stable/foundation-pack/lib/flx/flx-ido.el:Warning: reference
    to free variable `flx-ido-mode'
~/.emacs.d/packs/stable/foundation-pack/lib/flx/flx-ido.el:Warning: reference
    to free variable `flx-ido-mode'
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/ido-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/smex-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/smex-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/tramp-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/tramp-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/mouse-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/mouse-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/ibuffer-git-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/ibuffer-git-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/key-chord-conf.el (source)...
Key Chord mode on
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/key-chord-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/window-number-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/window-number-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/recentf-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/recentf-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/elisp-slime-nav-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/elisp-slime-nav-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/popwin-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/popwin-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/shell-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/shell-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/spelling-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/spelling-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/lisp-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/lisp-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/win-switch-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/win-switch-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/zone-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/zone-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/monkey-patch.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/monkey-patch.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/live.el (source)...
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/config/live.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/foundation-pack/init.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/colour-pack/
Loading /home/tony/.emacs.d/packs/stable/colour-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/colour-pack/info.el (source)...done
==> Pack name: emacs-live-colour-pack
==> Pack Version: 1.0beta24
==> Pack Description: A default pair of colour themes: Cyberpunk for those that like an intense experience with a black background, or Gandalf for those that like to program into the sun.
Loading /home/tony/.emacs.d/packs/stable/colour-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/colour-pack/config/colour-theme-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/colour-pack/lib/cyberpunk.el (source)...
Loading /home/tony/.emacs.d/packs/stable/colour-pack/lib/cyberpunk.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/colour-pack/lib/gandalf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/colour-pack/lib/gandalf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/colour-pack/config/colour-theme-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/colour-pack/config/live-fontify-hex-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/colour-pack/config/live-fontify-hex-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/colour-pack/config/live-fontify-hex-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/colour-pack/config/live-fontify-hex-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/colour-pack/init.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/lang-pack/
Loading /home/tony/.emacs.d/packs/stable/lang-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/info.el (source)...done
==> Pack name: emacs-live-lang-pack
==> Pack Version: 1.0beta24
==> Pack Description: A pack containing language modes for a number of interesting languages
Loading /home/tony/.emacs.d/packs/stable/lang-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/yaml-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/yaml-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/ioke-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/ioke-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/auto-modes.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/auto-modes.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/ruby-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/ruby-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/markdown-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/markdown-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/supercollider-conf.el (source)...
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/supercollider-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/actionscript-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/lib/actionscript-mode/actionscript-config.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/lib/actionscript-mode/actionscript-config.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/actionscript-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/js2-conf.el (source)...
`labels' is an obsolete macro (as of 24.3); use `cl-labels' instead.
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/js2-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/glsl-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/glsl-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/extempore-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/extempore-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/haskell-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/lang-pack/config/haskell-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/lang-pack/init.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/power-pack/
Loading /home/tony/.emacs.d/packs/stable/power-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/info.el (source)...done
==> Pack name: emacs-live-power-pack
==> Pack Version: 1.0beta24
==> Pack Description: Power up Emacs with a bunch of awesome tools
Loading /home/tony/.emacs.d/packs/stable/power-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/volatile-highlights-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/volatile-highlights-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/yasnippet-conf.el (source)...
[yas] Prepared just-in-time loading for /home/tony/.emacs.d/etc/snippets
[yas] Reloaded everything (snippets will load just-in-time)....
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/yasnippet-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/undo-tree-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/undo-tree-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/refheap-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/refheap-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/scratch-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/scratch-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/highlight-tail-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/highlight-tail-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/gist-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/gist-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/browse-kill-ring-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/browse-kill-ring-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/expand-region-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/expand-region-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/ace-jump-mode-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/ace-jump-mode-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/multiple-cursors-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/multiple-cursors-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/git-gutter-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/git-gutter-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/floobits-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/floobits-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/wc-mode-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/power-pack/config/wc-mode-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/power-pack/init.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/git-pack/
Loading /home/tony/.emacs.d/packs/stable/git-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/git-pack/info.el (source)...done
==> Pack name: emacs-live-git-pack
==> Pack Version: 1.0beta24
==> Pack Description: A pack for interacting with projects stored in a git repository.
Loading /home/tony/.emacs.d/packs/stable/git-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/git-pack/config/magit-conf.el (source)...
Cannot determine Magit's version
Loading /home/tony/.emacs.d/packs/stable/git-pack/config/magit-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/git-pack/init.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/org-pack/
Loading /home/tony/.emacs.d/packs/stable/org-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/org-pack/info.el (source)...done
==> Pack name: org-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: Org mode: http://orgmode.org/
Loading /home/tony/.emacs.d/packs/stable/org-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/org-pack/config/org-mode-config.el (source)...
Loading /home/tony/.emacs.d/packs/stable/org-pack/config/org-mode-config.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/org-pack/init.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/clojure-pack/
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/info.el (source)...done
==> Pack name: emacs-live-clojure-pack
==> Pack Version: 1.0beta24
==> Pack Description: A fully powered pack ready for Clojure hacking. Includes: paredit, cider, ac-nrepl, auto-complete, clojure-mode, mic-paren, rainbow-delimiters, popup-el, and more.
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/paredit-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/paredit-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/mic-paren-conf.el (source)...
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/mic-paren-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/auto-complete-conf.el (source)...
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/auto-complete-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/clojure-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/clojure-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/cider-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/cider-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/highlight-flash-conf.el (source)...
`labels' is an obsolete macro (as of 24.3); use `cl-labels' instead.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/highlight-flash-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/clojure-test-conf.el (source)...
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/config/clojure-test-conf.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/clojure-pack/init.el (source)...done


==> Loading Emacs Live Pack: /home/tony/.emacs.d/packs/stable/bindings-pack/
Loading /home/tony/.emacs.d/packs/stable/bindings-pack/info.el (source)...
Loading /home/tony/.emacs.d/packs/stable/bindings-pack/info.el (source)...done
==> Pack name: emacs-live-bindings-pack
==> Pack Version: 1.0beta24
==> Pack Description: A carefully selected (and opinionated) set of bindings.
Loading /home/tony/.emacs.d/packs/stable/bindings-pack/init.el (source)...
Loading /home/tony/.emacs.d/packs/stable/bindings-pack/config/default-bindings.el (source)...
Loading /home/tony/.emacs.d/packs/stable/bindings-pack/config/default-bindings.el (source)...done
Loading /home/tony/.emacs.d/packs/stable/bindings-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/install-packages-pack/
Loading /home/tony/.emacs-live-packs/install-packages-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/install-packages-pack/info.el (source)...done
==> Pack name: install-packs-pack
==> Pack Version: 0.0.1
==> Pack Description: install-packs-pack - a specific pack to help in installing other elpa/melpa/marmalade packs
Loading /home/tony/.emacs-live-packs/install-packages-pack/init.el (source)...
~/.emacs.d/elpa/package-store-0.3/package-store-autoloads.el:Warning: `flet'
    is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
~/.emacs.d/elpa/package-store-0.3/package-store-autoloads.el:Warning:
    assignment to free variable `url-http-end-of-headers'
~/.emacs.d/elpa/package-store-0.3/package-store-autoloads.el:Warning: `flet'
    is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
~/.emacs.d/elpa/package-store-0.3/package-store-autoloads.el:Warning:
    assignment to free variable `url-http-end-of-headers'
Loading /home/tony/.emacs-live-packs/install-packages-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/el-get-pack/
Loading /home/tony/.emacs-live-packs/el-get-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/el-get-pack/info.el (source)...done
==> Pack name: el-get-pack
==> Pack Version: 0.0.1
==> Pack Description: el-get-pack - install el-get
Loading /home/tony/.emacs-live-packs/el-get-pack/init.el (source)...
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
Loading /home/tony/.emacs-live-packs/el-get-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/el-get-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/el-get-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/buffer-pack/
Loading /home/tony/.emacs-live-packs/buffer-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/buffer-pack/info.el (source)...done
==> Pack name: buffer-pack
==> Pack Version: 0.0.1
==> Pack Description: buffer-pack - specific setup regarding manipulating buffers
Loading /home/tony/.emacs-live-packs/buffer-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/buffer-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/buffer-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/buffer-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/scratch-pack/
Loading /home/tony/.emacs-live-packs/scratch-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/scratch-pack/info.el (source)...done
==> Pack name: scratch-pack
==> Pack Version: 0.0.1
==> Pack Description: scratch-pack - some specific mess pack - need to be cleaned up
Loading /home/tony/.emacs-live-packs/scratch-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/scratch-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/scratch-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/scratch-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/blog-pack/
Loading /home/tony/.emacs-live-packs/blog-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/blog-pack/info.el (source)...done
==> Pack name: blog-pack
==> Pack Version: 0.0.1
==> Pack Description: blog-pack - a specific org2blog setup
Loading /home/tony/.emacs-live-packs/blog-pack/init.el (source)...
/home/tony/.netrc found! Running org2blog setup...
Setup done!
Loading /home/tony/.emacs-live-packs/blog-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/haskell-pack/
Loading /home/tony/.emacs-live-packs/haskell-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/haskell-pack/info.el (source)...done
==> Pack name: haskell-pack
==> Pack Version: 0.0.1
==> Pack Description: haskell-pack - some specific haskell setup
Loading /home/tony/.emacs-live-packs/haskell-pack/init.el (source)...
(lambda (n) ...) quoted with ' rather than with #'
Loading /home/tony/.emacs-live-packs/haskell-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/orgmode-pack/
Loading /home/tony/.emacs-live-packs/orgmode-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/orgmode-pack/info.el (source)...done
==> Pack name: orgmode-pack
==> Pack Version: 0.0.1
==> Pack Description: orgmode-pack - some specific org-mode setup
Loading /home/tony/.emacs-live-packs/orgmode-pack/init.el (source)...
(lambda (el) ...) quoted with ' rather than with #'
Loading /home/tony/.emacs-live-packs/orgmode-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/orgmode-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/orgmode-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/lisp-pack/
Loading /home/tony/.emacs-live-packs/lisp-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/lisp-pack/info.el (source)...done
==> Pack name: lisp-pack
==> Pack Version: 0.0.1
==> Pack Description: lisp-pack - some lisp specific setup
Loading /home/tony/.emacs-live-packs/lisp-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/lisp-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/lisp-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/lisp-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/git-pack/
Loading /home/tony/.emacs-live-packs/git-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/git-pack/info.el (source)...done
==> Pack name: git-pack
==> Pack Version: 0.0.1
==> Pack Description: git-pack - some specific magit or git setup
Loading /home/tony/.emacs-live-packs/git-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/git-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/mail-pack/
Loading /home/tony/.emacs-live-packs/mail-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/mail-pack/info.el (source)...done
==> Pack name: mail-pack
==> Pack Version: 0.0.1
==> Pack Description: mail-pack - some specific mail setup
Loading /home/tony/.emacs-live-packs/mail-pack/init.el (source)...
Mail Pack - ~/.authinfo found! Running Setup...
Mail Pack - Setup done!
Loading /home/tony/.emacs-live-packs/mail-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/shell-pack/
Loading /home/tony/.emacs-live-packs/shell-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/shell-pack/info.el (source)...done
==> Pack name: shell-pack
==> Pack Version: 0.0.1
==> Pack Description: shell-pack - specific shell setup
Loading /home/tony/.emacs-live-packs/shell-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/shell-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/browser-pack/
Loading /home/tony/.emacs-live-packs/browser-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/browser-pack/info.el (source)...done
==> Pack name: browser-pack
==> Pack Version: 0.0.1
==> Pack Description: browser-pack - setup around browser
Loading /home/tony/.emacs-live-packs/browser-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/browser-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/chat-pack/
Loading /home/tony/.emacs-live-packs/chat-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/chat-pack/info.el (source)...done
==> Pack name: chat-pack
==> Pack Version: 0.0.1
==> Pack Description: chat-pack - a specific gtalk setup
Loading /home/tony/.emacs-live-packs/chat-pack/init.el (source)...
chat-pack - You need to setup the credentials file ~/.authinfo for this to work.
Here is the needed content to setup to your need into '~/.authinfo':
machine jabber login <your-gmail-login> password <your-gmail-password>
Loading /home/tony/.emacs-live-packs/chat-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/clojure-pack/
Loading /home/tony/.emacs-live-packs/clojure-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/clojure-pack/info.el (source)...done
==> Pack name: clojure-pack
==> Pack Version: 0.0.1
==> Pack Description: clojure-pack - my specific clojure setup
Loading /home/tony/.emacs-live-packs/clojure-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/clojure-pack/config/bindings.el...
Loading /home/tony/.emacs-live-packs/clojure-pack/config/bindings.el...done
Loading /home/tony/.emacs-live-packs/clojure-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/clojurescript-pack/
Loading /home/tony/.emacs-live-packs/clojurescript-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/clojurescript-pack/info.el (source)...done
==> Pack name: clojurescript-pack
==> Pack Version: 0.0.1
==> Pack Description: clojurescript-pack - my specific clojurescript setup
Loading /home/tony/.emacs-live-packs/clojurescript-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/clojurescript-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/clojurescript-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/clojurescript-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/caml-pack/
Loading /home/tony/.emacs-live-packs/caml-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/caml-pack/info.el (source)...done
==> Pack name: caml-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: caml-pack
Loading /home/tony/.emacs-live-packs/caml-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/caml-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/caml-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/caml-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/modeline-pack/
Loading /home/tony/.emacs-live-packs/modeline-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/modeline-pack/info.el (source)...done
==> Pack name: modeline-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: modeline-pack - to manipulate the emacs-modeline
Loading /home/tony/.emacs-live-packs/modeline-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/modeline-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/twitter-pack/
Loading /home/tony/.emacs-live-packs/twitter-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/twitter-pack/info.el (source)...done
==> Pack name: twitter-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: twitter pack
Loading /home/tony/.emacs-live-packs/twitter-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/twitter-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/puppet-pack/
Loading /home/tony/.emacs-live-packs/puppet-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/puppet-pack/info.el (source)...done
==> Pack name: puppet-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: Puppet pack - setup puppet modes.
Loading /home/tony/.emacs-live-packs/puppet-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/puppet-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/puppet-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/puppet-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/macro-pack/
Loading /home/tony/.emacs-live-packs/macro-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/macro-pack/info.el (source)...done
==> Pack name: macro-pack
==> Pack Version: 0.0.1
==> Pack Description: macro-pack - some specific pack regarding macros.
Loading /home/tony/.emacs-live-packs/macro-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/macro-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/macro-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/macro-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/scala-pack/
Loading /home/tony/.emacs-live-packs/scala-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/scala-pack/info.el (source)...done
==> Pack name: scala-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: Scala setup pack
Loading /home/tony/.emacs-live-packs/scala-pack/init.el (source)...
Proceeding with the scala setup...
(lambda (cand) ...) quoted with ' rather than with #'
(lambda (x) ...) quoted with ' rather than with #'
Eager macro-expansion failure: (error "(ensime-builder-changed-files (ensime-connection)) is not a valid place expression")
Eager macro-expansion failure: (error "(ensime-builder-changed-files (ensime-connection)) is not a valid place expression")
Eager macro-expansion failure: (error "(ensime-builder-changed-files (ensime-connection)) is not a valid place expression")
`flet' is an obsolete macro (as of 24.3); use either `cl-flet' or `cl-letf'.
Loading /home/tony/.emacs-live-packs/scala-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/scala-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/scala-pack/config/akka/utils.el (source)...
Loading /home/tony/.emacs-live-packs/scala-pack/config/akka/utils.el (source)...done
Loading /home/tony/.emacs-live-packs/scala-pack/config/scala/utils.el (source)...
Loading /home/tony/.emacs-live-packs/scala-pack/config/scala/utils.el (source)...done
Loading /home/tony/.emacs-live-packs/scala-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/elisp-pack/
Loading /home/tony/.emacs-live-packs/elisp-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/elisp-pack/info.el (source)...done
==> Pack name: elisp-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: elisp-pack
Loading /home/tony/.emacs-live-packs/elisp-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/elisp-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/elisp-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/elisp-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/groovy-pack/
Loading /home/tony/.emacs-live-packs/groovy-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/groovy-pack/info.el (source)...done
==> Pack name: groovy-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: Groovy pack
Loading /home/tony/.emacs-live-packs/groovy-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/groovy-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/groovy-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/groovy-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/php-pack/
Loading /home/tony/.emacs-live-packs/php-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/php-pack/info.el (source)...done
==> Pack name: php-pack
==> Pack Version: 0.0.1alpha
==> Pack Description: PHP pack
Loading /home/tony/.emacs-live-packs/php-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/php-pack/config/bindings.el (source)...
Loading /home/tony/.emacs-live-packs/php-pack/config/bindings.el (source)...done
Loading /home/tony/.emacs-live-packs/php-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/ctags-pack/
Loading /home/tony/.emacs-live-packs/ctags-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/ctags-pack/info.el (source)...done
==> Pack name: ctags-pack
==> Pack Version: 1.0.2
==> Pack Description: An opinionated and automated ctags setup for Emacs Live
Loading /home/tony/.emacs-live-packs/ctags-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/ctags-pack/config/ctags-conf.el (source)...
Loading /home/tony/.emacs-live-packs/ctags-pack/config/ctags-conf.el (source)...done
Loading /home/tony/.emacs-live-packs/ctags-pack/init.el (source)...done


==> Loading Emacs Live Pack: ~/.emacs-live-packs/prelude-pack/
Loading /home/tony/.emacs-live-packs/prelude-pack/info.el (source)...
Loading /home/tony/.emacs-live-packs/prelude-pack/info.el (source)...done
==> Pack name: prelude-pack
==> Pack Version: 0.0.1
==> Pack Description: prelude-pack - Wrapper around prelude-core which offers some awesome functions.
Loading /home/tony/.emacs-live-packs/prelude-pack/init.el (source)...
Loading /home/tony/.emacs-live-packs/prelude-pack/init.el (source)...done


 Pack loading completed. Your Emacs is Live...


Starting Emacs daemon.
```
