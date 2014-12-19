(when (string-equal system-name "S12682")
  (let (
        (mypaths
         '(
           "E:/Python27"
           "e:/graphviz/bin"
           "E:/cygwin/bin"

           "C:/Users/h3/AppData/Local/Google/Chrome/Application"
           ) )
        )

    (setenv "PATH" (mapconcat 'identity mypaths ";") )

    (setq exec-path (append mypaths (list "." exec-directory)) )
    ) )

;; (when *win32*
;;   (add-to-list 'Info-directory-list (concat (getenv "emacs_dir") "/share/info"))
;;   )

(provide 'init-path)
