(straight-use-package 'magit)

(remove-hook 'server-switch-hook 'magit-commit-diff)

(global-set-key (kbd "C-x g") 'magit-status)
