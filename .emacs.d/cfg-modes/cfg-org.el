;; =======================================
;; Directory management
;; =======================================

;; Org Mode
(defun org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  )


;; disable line number in shell mode
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                esehll-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

(use-package org
  :hook (org-mode . org-mode-setup)
  :ensure t
  :defer t
  :config
  (setq org-ellipsis " ▾")
  (setq org-hide-emphasis-markers t)
  )

(use-package org-bullets
  :ensure t
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(defun org-mode-visual-fill ()
  (setq visual-fill-column-width 100
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :ensure t
  :hook (org-mode . org-mode-visual-fill))

;; insert src org
(global-set-key (kbd "C-c s") 'org-insert-structure-template)
(evil-define-key 'normal org-mode-map (kbd "<tab>") #'org-cycle)

;; extend block code
(custom-set-faces
 '(org-block ((t (:extend t)))))

(provide 'cfg-org)
