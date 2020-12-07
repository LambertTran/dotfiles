;; =======================================
;; Directory management
;; =======================================

;; need to be set before evil mode
(setq evil-want-C-i-jump nil)

(use-package evil
  :ensure t
  :config
  ; Make tab work with org-mode
  (evil-mode 1)
  )


;; export package
(provide 'cfg-evil)
