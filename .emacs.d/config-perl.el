; Cperl
;; (setq hippie-expand-try-functions-list
;;           '(try-expand-line
;;             try-expand-dabbrev
;;             try-expand-line-all-buffers
;;             try-expand-list
;;             try-expand-list-all-buffers
;;             try-expand-dabbrev-visible
;;             try-expand-dabbrev-all-buffers
;;             try-expand-dabbrev-from-kill
;;             try-complete-file-name
;;             try-complete-file-name-partially
;;             try-complete-lisp-symbol
;;             try-complete-lisp-symbol-partially
;;             try-expand-whole-kill))
;; (autoload 'comint-dynamic-complete "comint" "Complete for file name" t)
;; (setq comint-completion-addsuffix '("/" . ""))
;; (setq-default indent-tabs-mode nil)

;; (defalias 'perl-mode 'cperl-mode)
;; (defun pde-perl-mode-hook ()
;;   (abbrev-mode t)
;;   (add-to-list 'cperl-style-alist
;;                '("PDE"
;;                  (cperl-auto-newline                         . t)
;;                  (cperl-brace-offset                         . 0)
;;                  (cperl-close-paren-offset                   . -4)
;;                  (cperl-continued-brace-offset               . 0)
;;                  (cperl-continued-statement-offset           . 4)
;;                  (cperl-extra-newline-before-brace           . nil)
;;                  (cperl-extra-newline-before-brace-multiline . nil)
;;                  (cperl-indent-level                         . 4)
;;                  (cperl-indent-parens-as-block               . t)
;;                  (cperl-label-offset                         . -4)
;;                  (cperl-merge-trailing-else                  . t)
;;                  (cperl-tab-always-indent                    . t)
;;                  ))
;;   (cperl-set-style "PDE"))


; flymake
;(add-hook 'find-file-hook 'flymake-find-file-hook)
(add-hook 'perl-mode-hook 'flymake-mode)


;       interactive shell
;(add-to-list 'interpreter-mode-alist '("perl" . perl-mode))
;(add-to-list 'interpreter-mode-alist '("perl5" . perl-mode))
;(add-to-list 'interpreter-mode-alist '("miniperl" . perl-mode))
;(load-file "/home/julien/.emacs.d/plugins/inf-perl.el")
(defun perl-on-buffer ()
  (interactive)
  (shell-command-on-region (point-min) (point-max) "perl" "*Perl Output*")
  (display-buffer "*Perl Output*"))

(eval-after-load 'perl-mode
  '(define-key perl-mode-map (kbd "C-c C-c") 'perl-on-buffer))
