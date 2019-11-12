;; Minimal UI
(scroll-bar-mode -1)
(tool-bar-mode   -1)
(menu-bar-mode   -1)
(global-linum-mode t)
(global-hl-line-mode t)


;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
                         ("gnu"   . "http://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; Vim mode
(use-package evil
  :ensure t
  :config
  (evil-mode 1))

;; Theme
(use-package monokai-theme
  :ensure t
  :config
  (load-theme 'monokai t))

;; Helm
; (use-package helm
;   :ensure t
;   :init
;   (setq helm-mode-fuzzy-match t)
;   (setq helm-completion-in-region-fuzzy-match t)
;   (setq helm-candidate-number-list 50))

;; Which Key
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode))

;; Custom keybinding
; (use-package general
;   :ensure t
;   :config (general-define-key
;   :states '(normal visual insert emacs)
;   :prefix "SPC"
;   :non-normal-prefix "M-SPC"
;   ;; "/"   '(counsel-rg :which-key "ripgrep") ; You'll need counsel package for this
;   "TAB" '(switch-to-prev-buffer :which-key "previous buffer")
;   "SPC" '(helm-M-x :which-key "M-x")
;   "pf"  '(helm-find-file :which-key "find files")
;   ;; Buffers
;   "bb"  '(helm-buffers-list :which-key "buffers list")
;   ;; Window
;   "wl"  '(windmove-right :which-key "move right")
;   "wh"  '(windmove-left :which-key "move left")
;   "wk"  '(windmove-up :which-key "move up")
;   "wj"  '(windmove-down :which-key "move bottom")
;   "w/"  '(split-window-right :which-key "split right")
;   "w-"  '(split-window-below :which-key "split bottom")
;   "wx"  '(delete-window :which-key "delete window")
;   ;; Others
;   "at"  '(ansi-term :which-key "open terminal")
; ))

;; Fancy titlebar for MacOS
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(setq ns-use-proxy-icon  nil)
(setq frame-title-format nil)

