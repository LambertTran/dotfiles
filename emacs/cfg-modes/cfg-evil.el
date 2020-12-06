;; =======================================
;; Directory management
;; =======================================

(use-package evil
  :ensure t
  :config
  ; Make tab work with org-mode
  (setq evil-want-C-i-jump nil)
  (evil-mode 1)
  )

;; export package
(provide 'cfg-evil)
