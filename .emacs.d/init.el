(load-file  "~/.emacs.d/minimal.el")
(load-file "~/.emacs.d/programmation.el")

; Set frame size
(load-file "~/.emacs.d/frame.el")
;The rest
(add-to-list 'load-path "~/.emacs.d/plugins/predictive-0.24")
(add-to-list 'load-path "~/.emacs.d/plugins/predictive-0.24/latex")
;(require 'predictive)
;(add-hook 'emacs-startup-hook 'predictive-mode)
(setq enable-local-variables nil enable-local-eval nil)


;; repo for packages
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives
    '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
