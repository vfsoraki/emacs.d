;;; package --- projectile
;;; Commentary:
;;; Code:

(straight-use-package 'ag)

(straight-use-package 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)


;;; projectile ends here
