;;;;;;;;;;;;;;;;;;
;; package section
;;;;;;;;;;;;;;;;;;
(require 'package)
(add-to-list 'package-archives
    '("MELPA" .
      "http://melpa.milkbox.net/packages/"))
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(setq ring-bell-function 'ignore)

;; Projectile
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes nil)
 '(menu-bar-mode t)
 '(package-selected-packages
   (quote
    (markdown-mode groovy-mode terraform-mode json-mode yaml-mode magit multi-term evil helm projectile))))

(require 'projectile)
(define-key projectile-mode-map (kbd "C-q p") 'projectile-command-map)
(projectile-mode +1)

(require 'helm)
(helm-mode +1)
(set-face-attribute 'helm-selection nil 
                    :background "green"
                    :foreground "black")
(setq projectile-project-search-path '("/opt/lb/playground" "/opt/lb/tools"))
(setq projectile-completion-system 'helm)
(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)
(setq-default tab-stop-list ()) 
(setq-default evil-shift-width 2) 
(add-hook 'python-mode-hook
      (lambda ()
        (setq indent-tabs-mode t)
        (setq tab-width 4)
        (setq python-indent-offset 4)))
(global-set-key (kbd "C-x g") 'magit-status)


(defun split-and-follow-vertically ()
  (interactive)
  (split-window-right)
  (balance-windows)
  (other-window 1))
(global-set-key (kbd "C-x 3") 'split-and-follow-vertically)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(magit-diff-added ((t (:background "color-17" :foreground "brightyellow"))))
 '(magit-diff-added-highlight ((t (:background "color-17" :foreground "brightyellow"))))
 '(magit-diff-context-highlight ((t (:background "color-234" :foreground "brightblack"))))
 '(magit-diff-file-heading-highlight ((t (:inherit nil :background "color-22"))))
 '(magit-diff-hunk-heading-highlight ((t (:background "grey80" :foreground "grey30"))))
 '(magit-diff-removed ((t (:background "red" :foreground "brightwhite"))))
 '(magit-diff-removed-highlight ((t (:background "red" :foreground "brightwhite"))))
 '(magit-section-highlight ((t (:background "color-58")))))
