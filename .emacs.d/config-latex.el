(setq TeX-auto-save t)
(setq TeX-parse-self t)


; activate pdflatex
(setq TeX-PDF-mode t)


;flymake
(defun flymake-get-tex-args (file-name)
    (list "pdflatex" (list "-file-line-error" "-draftmode" "-interaction=nonstopmode" file-name)))
; spellcheck in LaTex mode
(add-hook `latex-mode-hook `flyspell-mode)
(add-hook `tex-mode-hook `flyspell-mode)
(add-hook `bibtex-mode-hook `flyspell-mode)
(add-hook `latex-mode-hook `flymake-mode)
(add-hook `tex-mode-hook `flymake-mode)
(add-hook `bibtex-mode-hook `flymake-mode)
