;;; package --- Dockerfile
;;; Commentary:
;;; - File Management
;;; Code:

(use-package dockerfile-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))
  )

(provide 'cfg-dockerfile)
;;; cfg-dockerfile.el ends here
