;;; minimial-cedet-config.el --- Working configuration for CEDET from bzr
 
;; Copyright (C) Alex Ott
;;
;; Author: Alex Ott <alexott@gmail.com>
;; Keywords: cedet, C++, Java
;; Requirements: CEDET from bzr (http://cedet.sourceforge.net/bzr-repo.shtml)
 
;; Do checkout of fresh CEDET, and use this config (don't forget to change path below)
 
;; (setq cedet-root-path (file-name-as-directory "~/projects/cedet-bzr/"))
 
;; (load-file (concat cedet-root-path "cedet-devel-load.el"))
;; (add-to-list 'load-path (concat cedet-root-path "contrib"))
 
;; select which submodes we want to activate
(add-to-list 'semantic-default-submodes 'global-semantic-mru-bookmark-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-scheduler-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
;; (add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode)
(add-to-list 'semantic-default-submodes 'global-semantic-highlight-func-mode)
(add-to-list 'semantic-default-submodes 'global-semanticdb-minor-mode)
 
;; Activate semantic
(semantic-mode 1)
 
;; load contrib library
;; (require 'eassist)

(defconst cedet-user-include-dirs
  (list ".." "../include" "../inc" "../common" "../public"
        "../.." "../../include" "../../inc" "../../common" "../../public"))

(defconst cedet-win32-include-dirs
  (list "D:/MinGW/mingw32/include"
        "D:/MinGW/lib/gcc/mingw32/4.8.1/include/c++"))

(let ((include-dirs cedet-user-include-dirs))
  (when (eq system-type 'windows-nt)
    (setq include-dirs (append include-dirs cedet-win32-include-dirs)))
  (mapc (lambda (dir)
          (semantic-add-system-include dir 'c++-mode)
          (semantic-add-system-include dir 'c-mode))
        include-dirs))

;; (semantic-add-system-include
;;  "D:/MinGW/mingw32/include" 'c-mode)
;; (semantic-add-system-include
;;  "D:/MinGW/mingw32/include" 'c++-mode)
;; (semantic-add-system-include
;;  "D:/MinGW/lib/gcc/mingw32/4.8.1/include/c++" 'c++-mode)
 
;; customisation of modes
(defun alexott/cedet-hook ()
  (local-set-key [(control return)] 'semantic-ia-complete-symbol-menu)
  (local-set-key "\C-c?" 'semantic-ia-complete-symbol)
  ;;
  (local-set-key "\C-c>" 'semantic-complete-analyze-inline)
  (local-set-key "\C-c=" 'semantic-decoration-include-visit)
 
  (local-set-key "\C-cj" 'semantic-ia-fast-jump)
  (local-set-key "\C-cq" 'semantic-ia-show-doc)
  (local-set-key "\C-cs" 'semantic-ia-show-summary)
  (local-set-key "\C-cp" 'semantic-analyze-proto-impl-toggle)
  )
(add-hook 'c-mode-common-hook 'alexott/cedet-hook)
(add-hook 'lisp-mode-hook 'alexott/cedet-hook)
;; (add-hook 'scheme-mode-hook 'alexott/cedet-hook)
(add-hook 'emacs-lisp-mode-hook 'alexott/cedet-hook)
;; (add-hook 'erlang-mode-hook 'alexott/cedet-hook)
 
(defun alexott/c-mode-cedet-hook ()
  ;; (local-set-key "\C-ct" 'eassist-switch-h-cpp)
  ;; (local-set-key "\C-xt" 'eassist-switch-h-cpp)
  ;; (local-set-key "\C-ce" 'eassist-list-methods)
  (local-set-key "\C-c\C-r" 'semantic-symref)
  )
(add-hook 'c-mode-common-hook 'alexott/c-mode-cedet-hook)

(defun my-c-mode-cedet-hook ()
 (local-set-key "." 'semantic-complete-self-insert)
 (local-set-key ">" 'semantic-complete-self-insert)
 (local-set-key "\M-n" 'semantic-ia-complete-symbol-menu))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)
 
(semanticdb-enable-gnu-global-databases 'c-mode t)
(semanticdb-enable-gnu-global-databases 'c++-mode t)
 
;; (when (cedet-ectag-version-check t)
  ;; (semantic-load-enable-primary-ectags-support))
 
;; SRecode
(require 'srecode)
(srecode-minor-mode 1)

 
;; EDE
(global-ede-mode 1)
(ede-enable-generic-projects)
 
 
;; Setup JAVA....
;; (require 'cedet-java)