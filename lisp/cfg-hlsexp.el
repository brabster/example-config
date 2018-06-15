(require-package 'hl-sentence)

;; hl-sexp: minor mode to highlight s-expression
(require 'hl-sentence)

(add-hook 'clojure-mode-hook #'hl-sentence-mode)
(add-hook 'lisp-mode-hook #'hl-sentence-mode)
(add-hook 'emacs-lisp-mode-hook #'hl-sentence-mode)
