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


;; open file in git
(use-package git-link
  :ensure t
  :config
         (setq git-link-open-in-browser t)
  )
(global-set-key (kbd "C-c l") 'git-link)

;; show changes in buffer
(use-package git-gutter
  :ensure t
  :diminish
  :hook ((text-mode . git-gutter-mode)
         (prog-mode . git-gutter-mode))
  :config
  (setq git-gutter:update-interval 2)
  (set-face-background 'git-gutter:added "blue") ;; background color
  (set-face-foreground 'git-gutter:added "white")
  (set-face-foreground 'git-gutter:modified "LightGoldenrod")
  (set-face-foreground 'git-gutter:deleted "LightCoral")
  )

;; export package
(provide 'cfg-magit)
