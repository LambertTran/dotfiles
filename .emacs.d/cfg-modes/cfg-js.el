;;; package --- Javascript
;;; Commentary:
;;; - Javascript mode
;;; Code:
(use-package js2-mode
  :ensure t
  :mode "\\.js\\'"
  )

(use-package prettier-js
  :ensure t
  :hook ((js2-mode . prettier-js-mode))
  :config
  (setq prettier-js-show-errors nil))
  (setq js2-mode-show-strict-warnings nil)

(provide 'cfg-js)
;;; cfg-js.el ends here
