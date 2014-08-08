; Parenthesis
(electric-pair-mode 1)
(setq electric-pair-pairs '(
			    (?\" . ?\")
			    (?\{ . ?\})
 			    (?\` . ?\`)
			    ) )

(defun insert-bracket-pair (leftBracket rightBracket)
  "Insert a matching bracket.
If region is not active, place the cursor between them.
If region is active, insert around the region, place the cursor after the right bracket.

The argument leftBracket rightBracket are strings."
  (if (region-active-p)
      (let (
            (p1 (region-beginning))
            (p2 (region-end))
            )
        (goto-char p2)
        (insert rightBracket)
        (goto-char p1)
        (insert leftBracket)
        (goto-char (+ p2 2))
        )
    (progn
      (insert leftBracket rightBracket)
      (backward-char 1) ) )
  )

(defun insert-pair-paren () (interactive) (insert-bracket-pair "(" ")") )
(defun insert-pair-bracket () (interactive) (insert-bracket-pair "[" "]") )
(defun insert-pair-brace () (interactive) (insert-bracket-pair "{" "}") )

(defun insert-pair-double-straight-quote () (interactive) (insert-bracket-pair "\"" "\"") )
(defun insert-pair-single-straight-quote () (interactive) (insert-bracket-pair "'" "'") )

(defun insert-pair-single-angle-quote‹› () (interactive) (insert-bracket-pair "‹" "›") )
(defun insert-pair-double-angle-quote«» () (interactive) (insert-bracket-pair "«" "»") )
(defun insert-pair-double-curly-quote“” () (interactive) (insert-bracket-pair "“" "”") )
(defun insert-pair-single-curly-quote‘’ () (interactive) (insert-bracket-pair "‘" "’") )



; line in margin + show columm
(global-linum-mode 1)
(column-number-mode 1)


; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)


; line highlighting
(global-hl-line-mode t) ;; To enable
(set-face-background 'hl-line "gray") ;; change with the color that you like for a list of colors: http://raebear.net/comp/emacscolors.html


; Emacs Code Browser and Semantics
(load-file "~/.emacs.d/ecb.el")


; Load language specific configuration
; LaTeX
(load-file "~/.emacs.d/config-latex.el")
; python
(load-file "~/.emacs.d/config-python.el")
;perl
(load-file "~/.emacs.d/config-perl.el")
;php
(load-file "~/.emacs.d/config-php.el")
;c++
(load-file "~/.emacs.d/config-cpp.el")
;arduino
(load-file "~/.emacs.d/config-arduino.el")
;d
(load-file "~/.emacs.d/config-d.el")
;org
(load-file "~/.emacs.d/config-org.el")
;ruby
(load-file "~/.emacs.d/config-ruby.el")
;java does not work properly
;(load-file "~/.emacs.d/config-java.el")
