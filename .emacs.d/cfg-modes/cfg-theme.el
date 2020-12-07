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


(load-theme 'moe-dark t)


;; export package
(provide 'cfg-theme)
