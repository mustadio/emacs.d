;;(setq emacs-base-driver "d:/")

(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))


(setq *spell-check-support-enabled* t)
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs23* (and (not *xemacs*) (or (>= emacs-major-version 23))) )
(setq *emacs24* (and (not *xemacs*) (or (>= emacs-major-version 24))) )


(setq inhibit-startup-message t)                               ;Do not show startup message
(setq display-time-24hr-format t)   
(display-time)                    
(setq display-time-day-and-date t)                             ;Show date and time 
(setq column-number-mode t)                                    ;Show column number

;;(tool-bar-mode nil)                                          ;Do not show toolbar
(scroll-bar-mode nil)                                          ;Do not show scrollbar
(mouse-avoidance-mode 'animate)                                ;Mouse avoidance
(which-func-mode t)
(setq-default make-backup-files nil)
(show-paren-mode t)
(transient-mark-mode t)
;;(set-message-beep 'silent)
(setq visible-bell t)
;; (server-start)
(setq scroll-margin 3 scroll-conservatively 10000)

(setq indent-tabs-mode nil)
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(tool-bar-mode -1)
(menu-bar-mode -1)

;; (setq c-default-style "bsd"
      ;; c-basic-offset 4)

(setq c-default-style `((java-mode . "java") (awk-mode . "awk") (other . "stroustrup"))
      c-basic-offset 4)
(setq python-indent-offset 4)


(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)


(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
        '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

(prefer-coding-system 'utf-8-unix)

(electric-pair-mode 1)

(defalias 'list-buffers 'ibuffer)

;; make buffer switch command auto suggestions, also for find-file command
(ido-mode 1)

;;(require 'w32-browser)
;;(eval-after-load "dired"
;;'(define-key dired-mode-map [f10] (lambda ()
;;(interactive)
;;(w32-browser
;;(dired-replace-in-string
;;"/" "\\"
;;(dired-get-filename))))))

(setq inhibit-splash-screen t)
(require 'bookmark)
(bookmark-bmenu-list)
(switch-to-buffer "*Bookmark List*")

(toggle-frame-maximized)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(require 'init-package)
(require 'init-cmake-mode)
(require 'init-tramp)
(require 'init-single-dired)
(require 'init-proxy)
(require 'init-qian-comment)
(require 'init-font)
(require 'init-auctex)
(require 'init-path)
(require 'init-bracket-pair)
(require 'init-c-ide)
(require 'init-linum-off)
;; (require 'init-org)

(require 'yasnippet)
(yas-global-mode 1)

(require 'graphviz-dot-mode)
(load-theme 'wombat t)

(require 'magit)
(require 'ztree-diff)




