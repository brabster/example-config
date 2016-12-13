;;; setup ido
(require-package 'ido-ubiquitous)
(require-package 'flx-ido)

(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

(global-linum-mode t)
(menu-bar-mode -1)

;; This allows partial matches, e.g. "tl" will match "Tyrion Lannister"
(setq ido-enable-flex-matching t)
(setq ido-use-faces nil)

;; Includes buffer names of recently open files, even if they're not
;; open now
(setq ido-use-virtual-buffers t)

;; This enables ido in all contexts where it could be useful, not just
;; for selecting buffer and file names
(ido-ubiquitous-mode 1)

;; Shows a list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)


;;; theme setup
(require-package 'solarized-theme)
(load-theme 'solarized-dark t)
(setq x-underline-at-descent-line t)

;;; general setup
(tool-bar-mode -1)

;;; lifted from clojure for the brave and true...
;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.


;; Turn on recent file mode so that you can more easily switch to
;; recently edited files when you first start emacs
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require-package 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 40)

;; Enhances M-x to allow easier execution of commands. Provides
;; a filterable list of possible commands in the minibuffer
;; http://www.emacswiki.org/emacs/Smex
(require-package 'smex)
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;;; cleanup whitespace on save
(require-package 'whitespace-cleanup-mode)
(add-hook 'clojure-mode-hook #'whitespace-cleanup-mode)

;;; aggressively indent
(require-package 'aggressive-indent)
(add-hook 'emacs-lisp-mode-hook #'aggressive-indent-mode)
(add-hook 'clojure-mode-hook #'aggressive-indent-mode)

;;; setup magit
(require-package 'magit)
(global-set-key (kbd "C-x g") 'magit-status)

;;; optimise gc
(setq gc-cons-threshold 20000000)

;;; setup projectile
(require-package 'projectile)
(projectile-global-mode)
(setq projectile-require-project-root nil)

;;; disable autosave and backup
(setq auto-save-default nil)
(setq backup-inhibited t)

(require-package 'json-mode)
(require-package 'markdown-mode)
