;; =======================================
;; Directory management
;; =======================================

; Disable the toolbar
(tool-bar-mode -1)

; Disable tooltips
(tooltip-mode -1)

; Disable the menu bar
(menu-bar-mode -1)

; Enable line number
(global-display-line-numbers-mode 1)

; Enable column number
(column-number-mode t)

; Reload files when changes on disk
(global-auto-revert-mode t)

; Initial frame size
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 120))

; Disable scroll bar
(toggle-scroll-bar -1)

; Backup
(setq create-lockfiles nil)
(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-file-name-transforms `((".*" ,"~/.saves" t)))

; Ignore beel
(setq ring-bell-function 'ignore)
                                        ;
;; Transparent windows
(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))
(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;
;; Copy and Paste
;;
(defun pbcopy ()
  (interactive)
  (call-process-region (point) (mark) "pbcopy")
  (setq deactivate-mark t))

(defun pbpaste ()
  (interactive)
  (call-process-region (point) (if mark-active (mark) (point)) "pbpaste" t t))

(defun pbcut ()
  (interactive)
  (pbcopy)
  (delete-region (region-beginning) (region-end)))

;; copy and paste
(global-set-key (kbd "C-c c") 'pbcopy)
(global-set-key (kbd "C-c v") 'pbpaste)
(global-set-key (kbd "C-c x") 'pbcut)

;;
;; Key Binding
;;
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(global-set-key (kbd "C-x k") 'kill-this-buffer)

;; Switch Window
(global-set-key (kbd "C-x [") 'windmove-left)
(global-set-key (kbd "C-x ]") 'windmove-right)


(use-package super-save
  :ensure t
  :defer 1
  :diminish super-save-mode
  :config
  (super-save-mode +1)
  (setq super-save-auto-save-when-idle t))

;; export package
(provide 'cfg-utils)
