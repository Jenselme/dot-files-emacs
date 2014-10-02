(require 'compile)
(add-to-list
 'compilation-error-regexp-alist
 '("^\\([^ \n]+\\)(\\([0-9]+\\)): \\(?:error\\|.\\|warnin\\(g\\)\\|remar\\(k\\)\\)"
   1 2 nil (3 . 4)))
(add-hook 'd-mode-hook 'flymake-mode)
(add-hook 'd-mode-hook 'auto-complete-mode)

(require 'ac-dcd)
(add-to-list 'ac-modes 'd-mode)
(add-hook 'd-mode-hook
          (lambda () "set up ac-dcd"
            (auto-complete-mode t)
            (yas-minor-mode-on)
            (ac-dcd-maybe-start-server)
            (ac-dcd-add-imports)
            (add-to-list 'ac-sources 'ac-source-dcd)))
