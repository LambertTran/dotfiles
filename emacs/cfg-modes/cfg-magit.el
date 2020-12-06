;; =======================================
;; Git management
;; =======================================

(use-package magit
  :ensure t
  :custom
         ;; open magit status in same buffer
         (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1)
  :config 
	 (global-set-key (kbd "C-x g") 'magit-status)
  )

(use-package evil-magit
  :ensure t
  :after magit)

;; export package
(provide 'cfg-magit)
