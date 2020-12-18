(straight-use-package 'crux)

(global-set-key [(control shift return)] #'crux-smart-open-line-above)
(global-set-key (kbd "C-c D") #'crux-delete-file-and-buffer)
(global-set-key (kbd "C-c d") #'crux-duplicate-current-line-or-region)
(global-set-key (kbd "C-c r") #'crux-rename-file-and-buffer)
