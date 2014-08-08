;pour utiliser jdee (avec emacs-24, voir http://forums.fedoraforum.org/showthread.php?t=280711)
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/cedet-1.1/common")
;(add-to-list 'load-path "/usr/share/emacs/site-lisp/jdee-2.4.0.1/lisp")
;(require 'jde)
;(defun screen-width nil -1)
;(define-obsolete-function-alias 'make-local-hook 'ignore "21.1")



;or

(add-to-list 'load-path (expand-file-name "~/.emacs.d/plugins/emacs-eclim/"))
;; only add the vendor path when you want to use the libraries provided with emacs-eclim
(add-to-list 'load-path (expand-file-name "~/coding/git/emacs-eclim/vendor"))
(require 'eclim)

(setq eclim-auto-save t)
(global-eclim-mode)

;error in echo area
(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

;auto-complete
;; regular auto-complete initialization
(require 'auto-complete-config)
(ac-config-default)

;; add the emacs-eclim source
(require 'ac-emacs-eclim-source)
(add-hook 'eclim-mode-hook (lambda ()
                             (add-to-list 'ac-sources 'ac-source-emacs-eclim)
                             (add-to-list 'ac-sources 'ac-source-emacs-eclim-c-dot)))

;company-mode (dialogue for auto-completion)
;(require 'company)
;(require 'company-emacs-eclim)
;(company-emacs-eclim-setup)
;(global-company-mode t)
