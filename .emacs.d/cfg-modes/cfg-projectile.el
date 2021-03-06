;;; package --- Projectile
;;; Commentary:
;;; - File Management
;;; Code:

(use-package projectile
  :ensure t
  :config
     ;; enable
     (projectile-mode +1)

     ;; ignore  node_modules dir - JS
     (setq projectile-globally-ignored-files '( "TAGS" "*/*node_modules"))

     ;; remap key
     (define-key projectile-mode-map (kbd "C-q p") 'projectile-command-map)
  )

(provide 'cfg-projectile)
;;; cfg-projectile.el ends here
