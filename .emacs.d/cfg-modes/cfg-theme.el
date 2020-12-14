;; =======================================
;; Directory management
;; =======================================

;; Set the fixed pitch face
;;(set-face-attribute 'default t :font "-outline-Monaco-normal-normal-normal-mono-18-*-*-*-c-*-iso8859-1")
(set-frame-font "Monaco 15" nil t)

;;(use-package powerline
;;  :ensure t
;;  )

(use-package moe-theme
  :ensure t
  )

(setq moe-theme-highlight-buffer-id t)
(moe-theme-apply-color 'red)
(moe-dark)


;; highlight parens
(show-paren-mode t)
(setq show-paren-style 'expression)


;; export package
(provide 'cfg-theme)
