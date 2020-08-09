(straight-use-package 'flycheck)

(global-flycheck-mode)

(add-hook 'after-init-hook #'global-flycheck-mode)
