(if (string= system-name "ZTE-10114588")
    (setq url-proxy-services
          '(("no_proxy" . "^\\(localhost\\|10.*\\)")
            ("http" . "proxysz.zte.com.cn:80")
            ("https" . "proxysz.zte.com.cn:80"))))


(provide 'init-proxy)
