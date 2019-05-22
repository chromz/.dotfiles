;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

;; (setq my-packages
;;       '(
;;        cmake-ide go-mode js2-mode rg dracula-theme flycheck-clang-tidy auctex company-auctex company-tern gruvbox-theme company flycheck projectile all-the-icons neotree ;; Packages list to restore
;;     ))

;; (dolist (pkg my-packages)
;;   (unless (package-installed-p pkg)
;;     (package-install pkg)))

(setq custom-file "~/.emacs.d/custom.el")
(load-file custom-file)

;; Cycle windows
(global-set-key (kbd "C-.") #'other-window)
(global-set-key (kbd "C-,") #'prev-window)
(defun prev-window ()
  (interactive)
  (other-window -1))

;; Emacs whitespace
(require 'whitespace)
(setq whitespace-line-column 80)
(setq whitespace-style (quote (face spaces trailing tabs newline space-mark tab-mark newline-mark lines-tail)))
(setq whitespace-display-mappings
;; all numbers are unicode codepoint in decimal. e.g. (insert-char 182 1)
      '(
	(space-mark ?\ [183] [46])
	(space-mark ?\xA0 [?\x2422] [?_])
	(tab-mark ?\t [124 ?\t] [92 9])
	))

(global-whitespace-mode 1)

;; C Style
(setq c-default-style "linux")

;; Cmake
(cmake-ide-setup)

;; Js2 mode
(add-to-list 'auto-mode-alist '("\\.jsx?\\'" . js2-jsx-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-jsx-mode))

;; AUCTex
(setq-default TeX-engine 'xetex)
(setq TeX-view-program-selection '((output-pdf "Zathura")))

;; IDO
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))
(setq auto-save-file-name-transforms
      `((".*" "~/.emacs.d/autosaves/" t)))

;; ui things
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(load-theme 'dracula t)
(tool-bar-mode -1)
(show-paren-mode 1)
(setq show-paren-delay 0)
(global-display-line-numbers-mode)
;; (setq ido-auto-merge-work-directories-length -1)

;; Tree view
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
(setq neo-window-fixed-size nil)
(global-set-key (kbd "M-n") 'neotree-toggle)
(setq neo-autorefresh nil)
(setq projectile-switch-project-action 'neotree-projectile-action)
(setq neo-smart-open t)

;; Helm
;; (require 'helm-config)
;; (global-set-key (kbd "M-x") #'helm-M-x)
;; (global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
;; (global-set-key (kbd "C-x C-f") #'helm-find-files)
;; (helm-mode

;; Projectile
(projectile-mode +1)
;; (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "M-p") 'projectile-command-map)
(setq projectile-enable-caching t)


;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Company-mode
(global-company-mode)
(add-to-list 'company-backends 'company-tern)
(define-key company-active-map (kbd "TAB") 'company-complete-common-or-cycle)
(setq company-idle-delay 0)
(setq company-minimum-prefix-length 1)

(company-auctex-init)

;; Golang
;; (add-hook 'go-mode-hook 'gofmt-before-save)


(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
