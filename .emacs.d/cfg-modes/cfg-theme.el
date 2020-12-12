;; =======================================
;; Directory management
;; =======================================


(use-package powerline
  :ensure t
  )

(use-package moe-theme
  :ensure t
  )

(setq moe-theme-highlight-buffer-id t)

(show-paren-mode t)
(setq show-paren-style 'expression)

(load-theme 'moe-dark t)


;; export package
(provide 'cfg-theme)
