;; =======================================
;; Directory management
;; =======================================


(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode)
  )


;; export package
(provide 'cfg-rainbow-delimiters)
