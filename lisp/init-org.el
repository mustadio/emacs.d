(defun my-org-init ()
  (define-key org-mode-map "\M-q" 'toggle-truncate-lines))


(if (boundp 'org-mode-map)
(my-org-init)
(add-hook 'org-load-hook 'my-org-init))


(provide 'init-org)
