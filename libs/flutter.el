(straight-use-package 'lsp-dart)


(defconst flutter-sdk-path (shell-command-to-string "echo -n `asdf where flutter`"))
(defconst dart-sdk-path (concat flutter-sdk-path "/bin/cache/dart-sdk"))

(setq lsp-dart-sdk-dir dart-sdk-path)
(setq lsp-dart-flutter-sdk-dir flutter-sdk-path)
