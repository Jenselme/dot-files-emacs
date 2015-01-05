(add-to-list 'load-path "~/.emacs.d/plugins/emacs-for-python")
(defconst epy-install-dir
  (file-name-directory (or load-file-name
                           (when (boundp 'bytecomp-filename) bytecomp-filename)
                           buffer-file-name))
  "Installation directory of emacs-for-python"
)

(add-to-list 'load-path epy-install-dir)
(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
;(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration

; Make electric-pair-mode works with python triple quote
(defun python-electric-pair-string-delimiter ()
  (when (and electric-pair-mode
             (memq last-command-event '(?\" ?\'))
             (let ((count 0))
               (while (eq (char-before (- (point) count)) last-command-event)
                 (setq count (1+ count)))
               (= count 3)))
    (save-excursion (insert (make-string 3 last-command-event)))))

(add-hook 'python-mode-hook
          (lambda ()
            (add-hook 'post-self-insert-hook
                      #'python-electric-pair-string-delimiter 'append t)))


; flymake
(epy-setup-checker "pyflakes %f")


; ipython
(setq python-shell-interpreter "ipython3")


; highlight indentation
(require 'highlight-indentation)
(set-face-background 'highlight-indent-face "#98fb98")
(add-hook 'python-mode-hook 'highlight-indentation)


; jedi: add conditional and doc info. Requires python-jedi
(setq jedi:setup-keys t)
(setq jedi:complete-on-dot t)
(setq jedi:get-in-function-call-delay 100)
(setq jedi:tooltip-method '(popup))
(add-hook 'python-mode-hook 'jedi:setup)
(eval-after-load "python"
  '(define-key python-mode-map "\C-t\C-t" 'jedi:get-in-function-call))

;jedi-direx
(eval-after-load "python"
  '(define-key python-mode-map "\C-cv" 'jedi-direx:pop-to-buffer))
;;;;;; 					fin de la configuration pour python
