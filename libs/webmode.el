(straight-use-package 'web-mode)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.s?css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq
   web-mode-enable-current-element-highlight t
   web-mode-enable-current-column-highlight t
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-style-padding 1
   web-mode-script-padding 1
   web-mode-block-padding 0
   web-mode-comment-style 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)


(straight-use-package 'emmet-mode)
(add-hook 'sgml-mode-hook 'emmet-mode)
