(defcustom local/script-alist
  '(;;("d" . "./deploy.sh")
    ;;("D" . "./deploy.sh skip-front-build")
    ;; ...
    )
  "Alist of keys to scripts.
Used by `local/run-script'."
  :type '(alist :key-type key-sequence
		:value-type string)
  :group 'local/runner
  :safe (lambda (x) t))

(defun local/run-script (key-seq)
  "Run COMMAND from `local/script-alist' based on KEY-SEQ."
  (interactive (list (completing-read "Run: " (mapcar #'car local/script-alist))))
  (let ((default-directory (projectile-project-root buffer-file-name)))
    (compile (cdr (assoc key-seq local/script-alist)))))

(defun local/choose-script (command)
  "Run COMMAND from `local/script-alist'."
  (interactive (list (completing-read "Run: " (mapcar #'cdr local/script-alist))))
  (let ((default-directory (projectile-project-root buffer-file-name)))
    (compile command)))

(global-set-key (kbd "C-x C-r") 'local/run-script)
(global-set-key (kbd "C-x C-y") 'local/choose-script)
