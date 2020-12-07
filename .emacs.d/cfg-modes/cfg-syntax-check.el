;; =======================================
;; HTML Config
;; =======================================

(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

;; export package
(provide 'cfg-syntax-check)
