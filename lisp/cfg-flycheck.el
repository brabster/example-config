(require-package 'let-alist)
(require-package 'flycheck-clojure)
(require-package 'flycheck-pos-tip)

(require 'flycheck)

(eval-after-load 'flycheck '(flycheck-clojure-setup))

(add-hook 'after-init-hook #'global-flycheck-mode)

(eval-after-load 'flycheck
  '(setq flycheck-display-errors-function #'flycheck-pos-tip-error-messages))
