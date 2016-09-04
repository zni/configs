
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; General Customization ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; OSX Font
(set-default-font "Monaco-12")
(setq mac-allow-anti-aliasing nil)

;; Use spaces instead of tabs.
(setq-default c-basic-indent 4)
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)

;; C++ Hook (spaces instead of tabs, plus braces fix)
(defun my-c++-mode-hook ()
  (setq c-basic-offset 4)
  (c-set-offset 'substatement-open 0))
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

;; Truncate lines instead of wrapping them.
(set-default 'truncate-lines t)

;; Sane scrolling.
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; EShell customization
(setq eshell-prompt-function
      (lambda ()
        (concat
         "[" (eshell/pwd) "]\n"
         (format-time-string "%Y-%m-%d %H:%M" (current-time))
                " $ ")))

;; Key bindings
(global-set-key "\C-l" 'goto-line)

;; Turn on column numbers
(setq column-number-mode t)

;; Turn off scrollbars.
(scroll-bar-mode -1)

;; Turn off the splash screen
(setq inhibit-splash-screen t)

;; Evil (vim mode)
(add-to-list 'load-path "~/Coding/emacs/evil")
(require 'evil)
(evil-mode 1)

;; evil-tabs
(global-evil-tabs-mode t)

;; Packages
(require 'package)
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;; Color Themes
(add-to-list 'load-path "~/Coding/emacs/color-theme")
(add-to-list 'load-path "~/Coding/emacs/solarized")
(require 'color-theme)
(color-theme-initialize)
;(require 'color-theme-solarized)

;(color-theme-solarized-dark)
;(color-theme-clarity)

;(require 'color-theme-sanityinc-tomorrow)
;(color-theme-sanityinc-tomorrow--define-theme night)

(load-theme 'monokai t)

; Don't scatter tilde files all over the fucking place.
(defun make-backup-file-name (file)
  (concat "~/.emacs_backups/" (file-name-nondirectory file) "~"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tab-width 4))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;;;;;;;;;;;;;;;;;;;;
;; Language Modes 
;;;;;;;;;;;;;;;;;;;;

;; SLIME
(add-to-list 'load-path "~/Coding/emacs/slime")
(setq inferior-lisp-program "/opt/local/bin/sbcl")
(require 'slime)
(slime-setup '(slime-fancy))

;; Haskell Mode
(add-hook 'haskell-mode-hook 'interactive-haskell-mode)

;;;;;;;;;;;;;;;;
;; Minor Modes
;;;;;;;;;;;;;;;;

;; ParEdit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;; Rainbow Delimiters
(add-hook 'emacs-lisp-mode-hook #'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook       #'rainbow-delimiters-mode)
(add-hook 'scheme-mode-hook     #'rainbow-delimiters-mode)
(add-hook 'geiser-repl-mode-hook #'rainbow-delimiters-mode)
