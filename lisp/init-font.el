(when *win32*
  ;; Setting English Font
  (set-face-attribute
   'default nil :font "Consolas 11")
  ;; Chinese Font
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :size 14)))
  )

(when *linux*
  ;; Setting English Font
  (set-face-attribute
   'default nil :font "Source Code Pro 10")
  )

(provide 'init-font)




