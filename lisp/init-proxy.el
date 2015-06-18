(if (string= system-name "ZTE-10114588")
    (setq url-proxy-services
          '(("no_proxy" . "^\\(localhost\\|10.*\\)")
            ("http" . "proxysz.zte.com.cn:80")
            ("https" . "proxysz.zte.com.cn:80"))))

(if (string= system-name "localhost.localdomain")
    (setq url-proxy-services
          '(("no_proxy" . "^\\(localhost\\|10.*\\|192.168.*\\)")
            ("http" . "127.0.0.1:3128")
            ("https" . "127.0.0.1:3128"))))

(provide 'init-proxy)
