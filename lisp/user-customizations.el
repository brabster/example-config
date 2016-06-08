;;; projectile setup
(require-package 'projectile)
(projectile-global-mode)

;;; theme setup
(require-package 'solarized-theme)
(load-theme 'solarized-dark t)
(setq x-underline-at-descent-line t)

;;; general setup
(tool-bar-mode -1)
