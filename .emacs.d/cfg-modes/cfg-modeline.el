;;; package --- Modeline
;;; Commentary:
;;; - make thing look nice
;;; Code:
(use-package minions
  :ensure t
  :hook (doom-modeline-mode . minions-mode)
  :custom
  (minions-mode-line-lighter ""))

(use-package doom-modeline
  :ensure t
  :after eshell     ;; Make sure it gets hooked after eshell
  :hook (after-init . doom-modeline-init)
  :custom-face
  (mode-line ((t (:height 0.85))))
  (mode-line-inactive ((t (:height 0.85))))
  :custom
  (doom-modeline-height 15)
  (doom-modeline-bar-width 6)
  (doom-modeline-lsp t)
  (doom-modeline-github nil)
  (doom-modeline-mu4e nil)
  (doom-modeline-irc nil)
  (doom-modeline-minor-modes t)
  (doom-modeline-persp-name nil)
  (doom-modeline-buffer-file-name-style 'truncate-except-project)
  (doom-modeline-major-mode-icon nil))


(require 'minions)
(require 'doom-modeline)
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-modal-icon nil)
(setq evil-normal-state-tag   (propertize "[Normal]" 'face '(:background "red" :foreground "red"))
      evil-emacs-state-tag    (propertize "[Emacs]" 'face '((:background "orange" :foreground "red")))
      evil-insert-state-tag   (propertize "[Insert]" 'face '((:background "red") :foreground "white"))
      evil-motion-state-tag   (propertize "[Motion]" 'face '((:background "blue") :foreground "white"))
      evil-visual-state-tag   (propertize "[Visual]" 'face '((:background "grey80" :foreground "red")))
      evil-operator-state-tag (propertize "[Operator]" 'face '((:background "purple"))))
(provide 'cfg-modeline)
;;; cfg-modeline.el ends here
