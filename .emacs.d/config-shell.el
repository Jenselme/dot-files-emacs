(defun sh-script-extra-font-lock-is-in-double-quoted-string ()
  "Non-nil if point in inside a double-quoted string."
  (let ((state (syntax-ppss)))
    (eq (nth 3 state) ?\")))

(defun sh-script-extra-font-lock-match-var-in-double-quoted-string (limit)
  "Search for variables in double-quoted strings."
  (let (res)
    (while
        (and (setq res
                   (re-search-forward
                    "\\$\\({#?\\)?\\([[:alpha:]_][[:alnum:]_]*\\|[-#?@!]\\)"
                    limit t))
             (not (sh-script-extra-font-lock-is-in-double-quoted-string))))
    res))

(defvar sh-script-extra-font-lock-keywords
  '((sh-script-extra-font-lock-match-var-in-double-quoted-string
     (2 font-lock-variable-name-face prepend))))

(defun sh-script-extra-font-lock-activate ()
  (interactive)
  (font-lock-add-keywords nil sh-script-extra-font-lock-keywords)
  (if (fboundp 'font-lock-flush)
      (font-lock-flush)
    (when font-lock-mode
      (with-no-warnings
        (font-lock-fontify-buffer)))))

(add-hook 'sh-mode-hook 'sh-script-extra-font-lock-activate)
