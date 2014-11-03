(when (string-equal system-type "windows-nt")
  (let (
        (mypaths
         '(
           "E:/Python27"
           ;; "C:/Python32"

           "E:/cygwin/bin"

           "C:/Users/h3/AppData/Local/Google/Chrome/Application"
           ) )
        )

    (setenv "PATH" (mapconcat 'identity mypaths ";") )

    (setq exec-path (append mypaths (list "." exec-directory)) )
    ) )

(provide 'init-path)
