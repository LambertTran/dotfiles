;; =======================================
;; HTML Config
;; =======================================

(use-package go-mode
  :ensure t
  :defer t
  )

;; enable flycheck
(add-hook 'go-mode-hook 'flycheck-mode)
  ;; enable company mode for autocompletion
  (add-hook 'go-mode-hook (lambda ()
                            (set (make-local-variable 'company-backends) '(company-go))
                            (company-mode)))

;; export package
(provide 'cfg-go)
