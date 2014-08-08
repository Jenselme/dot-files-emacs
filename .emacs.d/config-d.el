(require 'compile)
(add-to-list
 'compilation-error-regexp-alist
 '("^\\([^ \n]+\\)(\\([0-9]+\\)): \\(?:error\\|.\\|warnin\\(g\\)\\|remar\\(k\\)\\)"
   1 2 nil (3 . 4)))
(add-hook 'd-mode-hook 'flymake-mode)
(add-hook 'd-mode-hook 'auto-complete-mode)
