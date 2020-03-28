(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package which-key
  :ensure t
  :diminish which-key-mode
  :config
  (which-key-mode +1))

(use-package company
  :ensure t
  :diminish company-mode
  :config
  (add-hook 'after-init-hook #'global-company-mode))

(use-package flycheck
  :ensure t
  :diminish flycheck-mode
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode))

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)
(set-frame-font "Hack 12" nil t)
(global-set-key (kbd "C-x k") 'kill-this-buffer)


;;(require 'hl-line)
;;(set-face-background 'hl-line "dark blue")

(set-face-attribute 'region nil :background "#666")
(setq backup-directory-alist `(("." . "~/.saves")))
(global-hl-line-mode +1)
(line-number-mode +1)
(global-display-line-numbers-mode 1)
(column-number-mode t)
(size-indication-mode t)
(setq inhibit-startup-screen t)
(add-hook 'before-save-hook 'whitespace-cleanup)
(use-package diminish
  :ensure t)
(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :config
  (progn
    (require 'smartparens-config)
    (smartparens-global-mode 1)
    (show-paren-mode t)))

(setq ring-bell-function 'ignore)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default tab-stop-list ())
(setq-default evil-shift-width 2)


(set-face-foreground 'font-lock-string-face "green")
(set-face-foreground 'font-lock-comment-face "green")

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-one t)
  (doom-themes-visual-bell-config))
(use-package smart-mode-line-powerline-theme
  :ensure t)

(use-package smart-mode-line
  :ensure t
  :config
  (setq sml/theme 'powerline)
  (add-hook 'after-init-hook 'sml/setup))


(defun reload-emacs()
  (interactive)
  (load-file "~/.emacs"))
(global-set-key (kbd "C-x t") 'reload-emacs)

(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)

(require 'projectile)
(define-key projectile-mode-map (kbd "C-q p") 'projectile-command-map)
(projectile-mode +1)

(use-package helm
  :ensure t
  :defer 2
  :bind
  ("M-x" . helm-M-x)
  ("C-x C-f" . helm-find-files)
  ("M-y" . helm-show-kill-ring)
  ("C-x b" . helm-mini)
  :config
  (require 'helm-config)
  (helm-mode 1)
  (setq helm-split-window-inside-p t
    helm-move-to-line-cycle-in-source t)
  (setq helm-autoresize-max-height 0)
  (setq helm-autoresize-min-height 20)
  (helm-autoresize-mode 1)
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
  (define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z
  )

;;(set-face-attribute 'helm-selection nil
;;                    :background "green"
;;                    :foreground "black")
(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(global-set-key (kbd "C-x g") 'magit-status)
(global-auto-revert-mode t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-builtin-face ((t (:foreground "color-87"))))
 '(font-lock-string-face ((t (:foreground "dark cyan"))))
 '(magit-diff-added ((t (:background "color-17" :foreground "brightyellow"))))
 '(magit-diff-added-highlight ((t (:background "color-17" :foreground "brightyellow"))))
 '(magit-diff-context-highlight ((t (:background "color-234" :foreground "brightblack"))))
 '(magit-diff-file-heading-highlight ((t (:inherit nil :background "color-22"))))
 '(magit-diff-hunk-heading-highlight ((t (:background "grey80" :foreground "grey30"))))
 '(magit-diff-removed ((t (:background "red" :foreground "brightwhite"))))
 '(magit-diff-removed-highlight ((t (:background "red" :foreground "brightwhite"))))
 '(magit-section-highlight ((t (:background "color-58")))))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" default)))
 '(package-selected-packages
   (quote
    (helm-projectile flycheck company which-key diminish smart-mode-line-powerline-theme doom-themes use-package zerodark-theme yaml-mode vs-dark-theme terraform-mode spacemacs-theme smart-mode-line projectile multi-term markdown-mode magit json-mode helm groovy-mode flymd evil dracula-theme dockerfile-mode color-theme-sanityinc-tomorrow atom-one-dark-theme))))
