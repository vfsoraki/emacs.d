;; (straight-use-package 'js2-mode)

(add-to-list 'auto-mode-alist '("\\.js\\'" . js-mode))
;; (add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
(setq js-indent-level 2)
;; (setq js2-strict-missing-semi-warning nil)
