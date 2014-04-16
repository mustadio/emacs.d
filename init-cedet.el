;;(load-file (concat emacs-base-driver "emacs-23.1/site-lisp/cedet-1.0/common/cedet.el"))

;;(global-ede-mode t)

;; Enabling Semantic (code-parsing, smart completion) features
;; Select one of the following:
;;(semantic-load-enable-minimum-features)
;;(semantic-load-enable-code-helpers)
;;(semantic-load-enable-gaudy-code-helpers)
;;(semantic-load-enable-excessive-code-helpers)
;;(semantic-load-enable-semantic-debugging-helpers)

;;(require 'semantic-gcc)

;;(require 'semantic-ia)

;;(semantic-add-system-include (concat emacs-base-driver "MinGW/include/") 'c++-mode)
;;(semantic-add-system-include (concat emacs-base-driver "MinGW/include/c++/3.4.5") 'c++-mode)
;;(semantic-add-system-include (concat emacs-base-driver "MinGW/include/c++/3.4.5/backward") 'c++-mode)
;;(semantic-add-system-include (concat emacs-base-driver "MinGW/include/c++/3.4.5/mingw32") 'c++-mode)
;;(semantic-add-system-include (concat emacs-base-driver "MinGW/lib/gcc/mingw32/3.4.5/include") 'c++-mode)

;;(defun my-c-mode-cedet-hook ()
;; (local-set-key "." 'semantic-complete-self-insert)
;; (local-set-key ">" 'semantic-complete-self-insert)
;; (local-set-key "\C-cj" 'semantic-ia-fast-jump)
;; (local-set-key "\C-cb" 'semantic-mrub-switch-tags)
;; (setq c-basic-offset 4)
;; (setq indent-tabs-mode nil)
;; (setq tab-width 4))
;;(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)


;;(eval-after-load "semantic-complete"
;;'(setq semantic-complete-inline-analyzer-displayor-class
;;semantic-displayor-ghost))

;;(require 'ecb)

(provide 'init-cedet)
