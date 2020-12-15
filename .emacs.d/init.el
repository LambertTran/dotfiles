;;; package --- Summary
;;; Commentary:
;;; Code:

;;
;; Set path to include "cfg-modes"
;;
(add-to-list 'load-path (expand-file-name "cfg-modes" user-emacs-directory))

;;
;; Ensure utf-8
;;
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

;;
;; Package managers
;;
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

;;
;; Refesh package list
;;
(unless package-archive-contents
  (package-refresh-contents))

;; Ignore warning
(setq byte-compile-warnings '(cl-functions))



;;
;; Include packages defined in cfg-modes folder
;;

(require 'cfg-theme)
(require 'cfg-utils)
(require 'cfg-evil)
(require 'cfg-projectile)
(require 'cfg-helm)
(require 'cfg-magit)
(require 'cfg-org)
(require 'cfg-rainbow-delimiters)
(require 'cfg-dumb-jump)
(require 'cfg-modeline)
(require 'cfg-tab)
(require 'cfg-syntax-check)
(require 'cfg-snippets)
(require 'cfg-company)
(require 'cfg-js)
(require 'cfg-html)
(require 'cfg-yaml)
(require 'cfg-go)
(require 'cfg-python)
(require 'cfg-dockerfile)
(require 'cfg-smartparens)
(require 'cfg-terraform)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("27a1dd6378f3782a593cc83e108a35c2b93e5ecc3bd9057313e1d88462701fcd" default))
 '(package-selected-packages
   '(hcl-mode dockerfile-mode python-mode go-mode yaml-mode web-mode prettier-js js2-mode company yasnippet flycheck doom-modeline minions diminish dumb-jump rainbow-delimiters git-gutter git-link magit visual-fill-column use-package org-bullets moe-theme helm-projectile evil doom-themes)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-block ((t (:extend t)))))
