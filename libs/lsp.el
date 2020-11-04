(setq lsp-keymap-prefix "C-c l")
(straight-use-package 'lsp-mode)
(setq lsp-enable-snippet 1)
(setq lsp-auto-configure 1)
(setq lsp-enable-indentation 1)
(setq lsp-enable-on-type-formatting 1)
(setq lsp-before-save-editse 1)
(setq lsp-enable-file-watchers 1)
(setq lsp-file-watch-threshold 50000)
(setq lsp-idle-delay 0.5)
(add-hook 'php-mode-hook #'lsp-deferred)
(add-hook 'pyton-mode-hook #'lsp-deferred)
(add-hook 'lsp-mode-hook #'lsp-enable-which-key-integration)


(straight-use-package 'dap-mode)
(setq dap-auto-configure-features '(sessions locals controls tooltip))
(require 'dap-php)

(straight-use-package 'lsp-ui)
(global-set-key (kbd "C-'") 'lsp-ui-imenu)

(straight-use-package 'lsp-treemacs)
(lsp-treemacs-sync-mode 1)
