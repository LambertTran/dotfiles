;; =======================================
;; HTML Config
;; =======================================

(use-package company
  :ensure t
  :diminish company-mode
 )

(add-hook 'after-init-hook #'global-company-mode)

;; export package
(provide 'cfg-company)
