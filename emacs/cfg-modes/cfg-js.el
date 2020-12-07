;; =======================================
;; Javascript Config
;; =======================================

(use-package js2-mode
  :ensure t
  :mode "\\.jsx?\\'"
  :config
  ;; Use js2-mode for Node scripts
  (add-to-list 'magic-mode-alist '("#!/usr/bin/env node" . js2-mode))

  ;; Don't use built-in syntax checking
  (setq js2-mode-show-strict-warnings nil)

  ;; Set up proper indentation in JavaScript and JSON files
  (add-hook 'js2-mode-hook #'dw/set-js-indentation)
  (add-hook 'json-mode-hook #'dw/set-js-indentation))

(use-package prettier-js
  :ensure t
  :hook (js2-mode . prettier-js-mode)
  :config
  (setq prettier-js-show-errors nil))

;; export package
(provide 'cfg-js)
