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

(global-display-line-numbers-mode)
;;(setq display-line-numbers 'relative)
(setq-default display-line-numbers-type 'visual
              display-line-numbers-current-absolute t
              display-line-numbers-width 4
              display-line-numbers-widen t)

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
 '(package-selected-packages (quote (evil helm projectile))))

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



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
