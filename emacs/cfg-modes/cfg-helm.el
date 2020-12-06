;; =======================================
;; Auto Complete for Directory Management
;; =======================================

(use-package helm
  :ensure t
  :defer 2
  :bind
       ("M-x" . helm-M-x)
       ("C-x C-f" . helm-find-files)
       ("M-y" . helm-show-kill-ring)
       ("C-x b" . helm-mini)
  :config
         (require 'helm-config)
         (helm-mode 1)
         (setq helm-split-window-inside-p t
               helm-move-to-line-cycle-in-source t)
         (setq helm-autoresize-max-height 0)
         (setq helm-autoresize-min-height 50)
         (helm-autoresize-mode 1)
         (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
         (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
  )

(use-package helm-projectile
  :ensure t
  :after (projectile)
  :config
  (helm-projectile-on))

;; export package
(provide 'cfg-helm)
