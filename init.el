;;; package --- init.el
;;; Commentary:
;;; Code:

;; Init code
(tool-bar-mode -1)
(menu-bar-mode -1)
(setq gc-cons-threshold 100000000)
;; This is only for Emacs > 27
(setq read-process-output-max (* 1024 1024)) ;; 1mb
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)
(load-theme 'wombat)

;; straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Packages
(add-to-list
 'load-path
 (expand-file-name "libs/" user-emacs-directory))

(load "first.el")
(load "icons.el")
(load "crux.el")
(load "exec-shell.el")
(load "inflection.el")
(load "literate-calc.el")
(load "gotoline.el")
(load "modeline.el")
(load "projectile.el")
(load "git.el")
(load "whichkey.el")
(load "flycheck.el")
(load "company.el")
(load "persp.el")
(load "treemacs.el")
(load "php.el")
(load "elixir.el")
(load "lsp.el")
(load "webmode.el")
(load "javascript.el")
(load "runner.el")
(load "rust.el")
(load "filetree.el")
(load "yaml.el")
(load "elm.el")
(load "vue.el")
(load "flutter.el")
(load "rest.el")

;; Custom code after packages
(add-hook 'prog-mode-hook 'subword-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(show-paren-mode)
(global-display-line-numbers-mode)
(add-hook 'icomplete-minibuffer-setup-hook #'visual-line-mode)
(global-set-key (kbd "M-k") 'kill-whole-line)

(global-set-key (kbd "C-c i") (lambda() (interactive)(find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "C-c z") (lambda() (interactive)(find-file "~/org/zarin.org")))
(global-set-key (kbd "C-c m") (lambda() (interactive)(find-file "~/org/mehtaran.org")))

(setq org-todo-keywords
      '((sequence "TODO" "DOING" "|" "DONE" "CANCELED")))

;; Custom variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(completion-category-overrides '((file (styles basic substring))))
 '(completion-ignore-case t t)
 '(completion-styles '(basic partial-completion substring))
 '(delete-selection-mode 1)
 '(display-fill-column-indicator-column 90)
 '(help-at-pt-display-when-idle '(flymake-diagnostic) nil (help-at-pt))
 '(help-at-pt-timer-delay 0.1)
 '(icomplete-hide-common-prefix nil)
 '(icomplete-mode t)
 '(icomplete-prospects-height 5)
 '(icomplete-show-matches-on-no-input t)
 '(kill-whole-line 1)
 '(read-buffer-completion-ignore-case t)
 '(read-file-name-completion-ignore-case t)
 '(safe-local-variable-values '((elixir-enable-compilation-checking . t)))
 '(warning-suppress-log-types '((comp))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;; init.el ends here
