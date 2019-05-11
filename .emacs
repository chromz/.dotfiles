;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" "1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177fb" default)))
 '(package-selected-packages
   (quote
    (flycheck-clang-tidy auctex company-auctex company-tern gruvbox-theme company flycheck projectile ## powerline all-the-icons neotree))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; (setq my-packages
;;       '(
;;        ;; Packages list to restore
;;     ))

;; (dolist (pkg my-packages)
;;   (unless (package-installed-p pkg)
;;     (package-install pkg)))


;; Emacs whitespace
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style (quote (face spaces trailing tabs newline space-mark tab-mark newline-mark)))
(setq whitespace-display-mappings
;; all numbers are unicode codepoint in decimal. e.g. (insert-char 182 1)
      '(
	(space-mark ?\ [183] [46]) ; SPACE 32 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
	(space-mark ?\xA0 [?\x2422] [?_]) ; Hard space
	(tab-mark ?\t [124 ?\t] [92 9]) ; tab
	))

(global-whitespace-mode 1)

;; AUCTex
(setq-default TeX-engine 'xetex)
(setq TeX-view-program-selection '((output-pdf "Zathura")))

;; IDO
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; ui things
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(load-theme 'gruvbox)
(tool-bar-mode -1)
;; (setq ido-auto-merge-work-directories-length -1)

(global-display-line-numbers-mode)
(global-set-key (kbd "M-n") 'neotree-toggle)

;; Tree view
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)

;; Helm
;; (require 'helm-config)
;; (global-set-key (kbd "M-x") #'helm-M-x)
;; (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;; (global-set-key (kbd "C-x C-f") #'helm-find-files)
;; (helm-mode 1)

;; Powerline
(powerline-default-theme)

;; Neotree
(setq projectile-switch-project-action 'neotree-projectile-action)

;; Projectile
(projectile-mode +1)
;; (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Company-mode
(global-company-mode)
(add-to-list 'company-backends 'company-tern)
(define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
(setq company-idle-delay 0)

(company-auctex-init)

(provide '.emacs)
;;; .emacs ends here
