(require 'tramp)

(if (string= system-name "ZTE-10114588")
    (setq tramp-default-user "shenqian"
          tramp-default-host "10.9.172.13")
  (setq tramp-default-user "pi"
        tramp-default-host "192.168.2.174"))

(when *win32*
  (setq tramp-default-method "plink")
  )

(when *linux*
  (setq tramp-default-method "ssh")
  )

(provide 'init-tramp)
