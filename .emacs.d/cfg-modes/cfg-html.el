;; =======================================
;; HTML Config
;; =======================================

(use-package web-mode
  :ensure t
  :mode "(\\.\\(html?\\|ejs\\|tsx\\|jsx\\)\\'"
  :config
  (setq-default web-mode-code-indent-offset 4)
  (setq-default web-mode-markup-indent-offset 4)
  (setq-default web-mode-attribute-indent-offset 4))

;; export package
(provide 'cfg-html)
