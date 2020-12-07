;; =======================================
;; Tab and Space Management
;; =======================================

;; set default tab to 4
(setq-default tab-width 4)

;; set evil tab to use default tab-width
(setq-default evil-shift-width tab-width)

;; use space instead of tab
(setq-default indent-tabs-mode nil)

;; cleanup whitespace
(use-package ws-butler
  :ensure t
  :hook ((text-mode . ws-butler-mode)
         (prog-mode . ws-butler-mode)))


(add-hook 'before-save-hook 'whitespace-cleanup)

;; export package
(provide 'cfg-tab)
