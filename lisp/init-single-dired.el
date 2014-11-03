(require 'dired-single)
(defun my-dired-init ()
"Bunch of stuff to run for dired, either immediately or when it's
loaded."
;; <add other stuff here>
(define-key dired-mode-map "f" 'joc-dired-single-buffer)
(define-key dired-mode-map [return] 'joc-dired-single-buffer)
(define-key dired-mode-map [mouse-1] 'joc-dired-single-buffer-mouse)
(define-key dired-mode-map "^"
(function
(lambda nil (interactive) (joc-dired-single-buffer "..")))))

;; if dired's already loaded, then the keymap will be bound
(if (boundp 'dired-mode-map)
;; we're good to go; just add our bindings
(my-dired-init)
;; it's not loaded yet, so add our bindings to the load-hook
(add-hook 'dired-load-hook 'my-dired-init))

(add-hook 'dired-mode-hook (lambda ()
(interactive)
(make-local-variable  'dired-sort-map)
(setq dired-sort-map (make-sparse-keymap))
(define-key dired-mode-map "s" dired-sort-map)
(define-key dired-sort-map "s"
  '(lambda () "sort by Size"
                (interactive) (dired-sort-other (concat dired-listing-switches "S"))))
(define-key dired-sort-map "x"
  '(lambda () "sort by eXtension"
                 (interactive) (dired-sort-other (concat dired-listing-switches "X"))))
(define-key dired-sort-map "t"
  '(lambda () "sort by Time"
                 (interactive) (dired-sort-other (concat dired-listing-switches "t"))))
(define-key dired-sort-map "n"
  '(lambda () "sort by Name"
  (interactive) (dired-sort-other (concat dired-listing-switches ""))))))

(defun sof/dired-sort ()
  "Dired sort hook to list directories first."
  (save-excursion
    (let (buffer-read-only)
      (forward-line 2) ;; beyond dir. header
      (sort-regexp-fields t "^.*$" "[ ]*." (point) (point-max))))
  (and (featurep 'xemacs)
       (fboundp 'dired-insert-set-properties)
       (dired-insert-set-properties (point-min) (point-max)))
  (set-buffer-modified-p nil))
(add-hook 'dired-after-readin-hook 'sof/dired-sort)

;; (require 'dired )
;; (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file) ; was dired-advertised-find-file
;; (define-key dired-mode-map (kbd "^") (lambda () (interactive) (find-alternate-file "..")))  ; was dired-up-directory

(provide 'init-single-dired)
