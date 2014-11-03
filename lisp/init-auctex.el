
(add-hook 'LaTeX-mode-hook (lambda()
                             (setq TeX-auto-save t)
                             (setq TeX-parse-self t)
                             (setq-default TeX-master nil)
                             (setq TeX-save-query  nil )
                             (setq TeX-auto-untabify t     ; remove all tabs before saving
                                   TeX-engine 'xetex       ; use xelatex default
                                   TeX-show-compilation t) ; display compilation windows
                             (TeX-global-PDF-mode t)       ; PDF mode enable, not plain
                             ))

(provide 'init-auctex)
