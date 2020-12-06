;; =======================================
;; Switching windows
;; =======================================

(use-package ace-window
  :ensure t
  )

(global-set-key (kbd "C-[") 'ace-window)


;; export package
(provide 'cfg-ace-window)
