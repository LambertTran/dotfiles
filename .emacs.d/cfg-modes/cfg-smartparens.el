;;; package --- Smartparens
;;; Commentary:
;;; - Complete parens
;;; Code:


(use-package smartparens-config
  :ensure smartparens
  :diminish smartparens-mode
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode 1)
    (show-paren-mode t)))

(provide 'cfg-smartparens)
;;; cfg-smartparens.el ends here
