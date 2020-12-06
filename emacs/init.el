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


;;
;; Include packages defined in cfg-modes folder
;;

(require 'cfg-utils)
(require 'cfg-evil)
(require 'cfg-projectile)
(require 'cfg-helm)
(require 'cfg-magit)
(require 'cfg-theme)
(require 'cfg-rainbow-delimiters)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit minions doom-modeline rainbow-delimiters moe-theme powerline helm-projectile helm projectile use-package telephone-line evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

