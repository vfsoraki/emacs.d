(straight-use-package 'company)

(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 2)
(setq company-search-regexp-function 'company-search-flex-regexp)
(setq company-show-numbers ''t)
(setq company-tooltip-idle-delay 0.1)

(add-hook 'after-init-hook 'global-company-mode)
