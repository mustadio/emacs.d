(setq emacs-base-driver "d:/")

(setq emacs-load-start-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))


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
(line-number-mode t)                                           ;Show line number
(setq display-time-24hr-format t)   
(display-time)                    
(setq display-time-day-and-date t)                             ;Show date and time 
(setq column-number-mode t)                                    ;Show column number
;;(tool-bar-mode nil)                                           ;Do not show toolbar
(scroll-bar-mode nil)                                          ;Do not show scrollbar
(mouse-avoidance-mode 'animate)                                ;Mouse avoidance
(setq indent-tabs-mode nil)
(setq tab-width 4)
(setq default-tab-width 4)
(which-func-mode t)
(setq-default make-backup-files nil)
(show-paren-mode t)
(transient-mark-mode t)
(set-message-beep 'silent)
(server-start)
(setq scroll-margin 3 scroll-conservatively 10000)

(setq c-default-style `((java-mode . "java") (awk-mode . "awk") (other . "stroustrup")))



(global-set-key (kbd "<C-wheel-up>") 'text-scale-increase)
(global-set-key (kbd "<C-wheel-down>") 'text-scale-decrease)

(cd "e:/")


;;(require 'w32-browser)
;;(eval-after-load "dired"
;;'(define-key dired-mode-map [f10] (lambda ()
;;(interactive)
;;(w32-browser
;;(dired-replace-in-string
;;"/" "\\"
;;(dired-get-filename))))))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (gnome2)))
 '(custom-safe-themes (quote ("a405a0c2ec845e34ecb32a83f477ca36d1858b976f028694e0ee7ff4af33e400" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'init-cmake-mode)
(require 'init-cedet)
(require 'init-tramp)
(require 'init-single-dired)
(require 'init-package)
(require 'init-proxy)
(require 'init-windows-frame)
(require 'init-qian-comment)
(require 'init-font)


(if *win32*
	(w32-maximize-frame)
  )
