;; =======================================
;; HTML Config
;; =======================================


(use-package exec-path-from-shell
  :ensure t
  :defer t
  )

(exec-path-from-shell-initialize)

(use-package go-mode
  :ensure t
  :defer t
  )

(use-package company-go
  :ensure t
  :defer t
  )

;; enable flycheck
(add-hook 'go-mode-hook 'flycheck-mode)

(setq company-tooltip-limit 20)                      ; bigger popup window
(setq company-idle-delay .3)                         ; decrease delay before autocompletion popup shows
(setq company-echo-delay 0)                          ; remove annoying blinking
(setq company-begin-commands '(self-insert-command)) ; start autocompletion only after typing

;; enable company mode for autocompletion
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook (lambda ()
                          (set (make-local-variable 'company-backends) '(company-go))
                          (company-mode)))
(add-hook 'before-save-hook 'gofmt-before-save)


;; export package
(provide 'cfg-go)
