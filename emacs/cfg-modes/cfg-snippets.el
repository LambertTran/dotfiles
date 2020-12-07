;; =======================================
;; HTML Config
;; =======================================

(use-package yasnippet
  :ensure t
  :hook (prog-mode . yas-minor-mode)
  :config
  (yas-reload-all));; export package

(provide 'cfg-snippets)
