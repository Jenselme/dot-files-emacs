(setq load-path (cons (expand-file-name "~/.emacs.d/elpa/cmake-mode-20140129.704") load-path))
(require 'cmake-mode)

;; 					;cmake
;; (setq load-path (cons (expand-file-name "~/.emacs.d/elpa/cmake-mode*") load-path))
;; (require 'cmake-mode)

;; (setq auto-mode-alist
;; (append '(("CMakeLists\\.txt\\'" . cmake-mode)
;;                  ("\\.cmake\\'" . cmake-mode))
;;                 auto-mode-alist))


;; ;cpputils-cmake
;; (add-hook 'c-mode-hook (lambda () (cppcm-reload-all)))
;; (add-hook 'c++-mode-hook (lambda () (cppcm-reload-all)))
;; ;; OPTIONAL, somebody reported that they can use this package with Fortran
;; (add-hook 'c90-mode-hook (lambda () (cppcm-reload-all)))

;; ;; OPTIONAL, avoid typing full path when starting gdb
;; ;(global-set-key (kbd "C-c C-g")
;; ; '(lambda ()(interactive) (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer))))
;; ;)
