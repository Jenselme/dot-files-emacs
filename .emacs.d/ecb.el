(require 'ecb)
(setq stack-trace-on-error t)
(setq ecb-tip-of-the-day nil)
(setq ecb-layout-name "left15")


; Semantic
(global-ede-mode 1)
(load-file "~/.emacs.d/ede-projects.el")
(require 'semantic/sb)
(require 'semantic/bovine/c)
(setq boost-base-dir "/usr/include/boost")
(semantic-add-system-include boost-base-dir 'c++-mode)
(add-to-list 'auto-mode-alist (cons boost-base-dir 'c++-mode))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat boost-base-dir "asio.hpp"))
(add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat boost-base-dir "io.hpp"))

(defun my-c-mode-cedet-hook ()
  (add-to-list 'ac-sources 'ac-source-gtags)
  (add-to-list 'ac-sources 'ac-source-semantic))
(add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)
(semantic-mode 1)
