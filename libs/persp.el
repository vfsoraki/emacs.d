(straight-use-package 'persp-mode)

(setq
 persp-keymap-prefix (kbd "C-c w")
 wg-morph-on nil
 persp-autokill-buffer-on-remove 'kill-weak
 persp-auto-resume-time -1
 persp-auto-save-opt 0)
(add-hook 'after-init-hook #'(lambda () (persp-mode 1)))
(global-set-key (kbd "C-x b") #'persp-switch-to-buffer)
(global-set-key (kbd "C-x k") #'persp-kill-buffer)
(persp-mode +1)

(straight-use-package 'persp-mode-projectile-bridge)

(add-hook 'persp-mode-projectile-bridge-mode-hook
	  #'(lambda ()
	      (if persp-mode-projectile-bridge-mode
		  (persp-mode-projectile-bridge-find-perspectives-for-all-buffers)
		(persp-mode-projectile-bridge-kill-perspectives))))
(add-hook 'after-init-hook
	  #'(lambda ()
	      (persp-mode-projectile-bridge-mode 1))
	  t)
