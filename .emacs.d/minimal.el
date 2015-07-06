(set-language-environment "UTF-8")

; to load plugins
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/plugins/")
(add-to-list 'load-path "/usr/share/emacs/site-lisp/")


; to load packages
(package-initialize)


; org-mode
(setq org-src-fontify-natively t)

; ido
(ido-mode t) ; InteractivelyDoThings, improve C-x b
(require 'ido-ubiquitous)
(ido-ubiquitous-mode t)
;; Fix ido-ubiquitous for newer packages
(defmacro ido-ubiquitous-use-new-completing-read (cmd package)
  `(eval-after-load ,package
     '(defadvice ,cmd (around ido-ubiquitous-new activate)
        (let ((ido-ubiquitous-enable-compatibility nil))
          ad-do-it))))

(ido-ubiquitous-use-new-completing-read webjump 'webjump)
(ido-ubiquitous-use-new-completing-read yas/expand 'yasnippet)
(ido-ubiquitous-use-new-completing-read yas/visit-snippet-file 'yasnippet)


; smex (M-x ido like)
(require 'smex) ; Not needed if you use package.el
(smex-initialize)
(global-set-key "\M-x" 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)


; Activate upcase-region
(put 'upcase-region 'disabled nil)



; the custom file is used when you modify settings with emacs' interface.
(setq custom-file "~/.emacs.d/custom.el")
(load "~/.emacs.d/custom.el")


; diseable bell
(setq visible-bell t)


; associate extensions with an precise emacs mode
(add-to-list 'auto-mode-alist '("\\.creole\\'" . creole-mode))


; templating
(require 'mmm-auto)
(setq mmm-global-mode 'maybe)
(load "~/.emacs.d/plugins/mmm-mako.el")
(add-to-list 'auto-mode-alist '("\\.mako\\'" . html-mode))
(mmm-add-mode-ext-class 'html-mode "\\.mako\\'" 'mako)


; Allow use of below keys
(global-set-key [dead-grave] "`")
(global-set-key [dead-acute] "´")
(require 'iso-transl)


; bépo rebinding (does not work  well)
;(load "~/.emacs.d/bepo/bindings.el")


; key-chord : allow you to use key combinasion like ;; to do an action.
(add-to-list 'load-path "~/.emacs.d/elpa/key-chord")
(load "~/.emacs.d/bepo/key-chord.el")


; change calendar
(setq calendar-week-start-day 1)
(setq display-time-24hr-format t)
(display-time)
; display full day and mouth name in French in the calendar
(defvar calendar-day-abbrev-array
  ["dim" "lun" "mar" "mer" "jeu" "ven" "sam"])
(defvar calendar-day-name-array
  ["dimanche" "lundi" "mardi" "mercredi" "jeudi" "vendredi" "samedi"])
(defvar calendar-month-abbrev-array
  ["jan" "fév" "mar" "avr" "mai" "jun"
   "jul" "aoû" "sep" "oct" "nov" "déc"])
(defvar calendar-month-name-array
  ["janvier" "février" "mars" "avril" "mai" "juin"
   "juillet" "août" "septembre" "octobre" "novembre" "décembre"])
; format date
(setq calendar-date-display-form '(dayname " " day " " monthname " " year))


; auto-indent new line
(define-key global-map (kbd "RET") 'newline-and-indent)
(setq c-default-style "linux"
      c-basic-offset 4)
(setq-default indent-tabs-mode nil)


; fill paragraph
(dolist (hook '(text-mode-hook LaTeX-mode-hook creole-mode-hook))
  (add-hook hook (lambda () (turn-on-auto-fill))))
(setq-default fill-column 80)
(setq fill-no-break-predicate 'fill-french-nobreak-p)


;;;;;;					Correct spelling
(setq-default ispell-program-name "aspell")
(setq ispell-tex-skip-alists
      (list
       (append (car ispell-tex-skip-alists)
               '(("\\\\cite"            ispell-tex-arg-end)
                 ("\\\\nocite"          ispell-tex-arg-end)
                 ("\\\\includegraphics" ispell-tex-arg-end)
                 ("\\\\figScale"         ispell-tex-arg-end)
                 ("\\\\author"          ispell-tex-arg-end)
                 ("\\\\ref"             ispell-tex-arg-end)
                 ("\\\\eqref"             ispell-tex-arg-end)
                 ("\\\\label"           ispell-tex-arg-end)
                 ))
       (cadr ispell-tex-skip-alists)))
; Prevent Ispell to check natbib quotations
(eval-after-load "ispell"
  '(let ((list (car ispell-tex-skip-alists)))
     (add-to-list 'list '("\\\\cite[tp]" ispell-tex-arg-end))
     (setcar ispell-tex-skip-alists list)))
; Flyspell
(ispell-change-dictionary "francais" t)
(autoload 'flyspell-mode "flyspell" "On-the-fly spelling checking" t)
(dolist (hook '(text-mode-hook LaTeX-mode-hook org-mode-hook creole-mode-hook
			       TeX-mode latex-mode tex-mode gnus-article-edit-mode message-mode post-mode))
  (add-hook hook (lambda () (flyspell-mode 1) (ispell-change-dictionary "francais"))))

(dolist (hook '(c++-mode-hook python-mode-hook java-mode-hook d-mode-hook rust-mode-hook ruby-mode-hook))
  (add-hook hook (lambda () (flyspell-mode 1) (flyspell-prog-mode) (ispell-change-dictionary "english"))))

;; cycle between dict (you should have aspell-en and aspell-fr)
(let ((langs '("english" "francais")))
  (setq lang-ring (make-ring (length langs)))
  (dolist (elem langs) (ring-insert lang-ring elem)))
(defun cycle-ispell-languages ()
  (interactive)
  (let ((lang (ring-ref lang-ring -1)))
    (ring-insert lang-ring lang)
    (ispell-change-dictionary lang)))
(global-set-key [f6] 'cycle-ispell-languages)

; Key binding
; easy spell check
(global-set-key (kbd "<f8>") 'ispell-word)
(global-set-key (kbd "C-S-<f8>") 'flyspell-mode)
(global-set-key (kbd "C-M-<f8>") 'flyspell-buffer)
(global-set-key (kbd "C-<f8>") 'flyspell-check-previous-highlighted-word)
(defun flyspell-check-next-highlighted-word ()
  "Custom function to spell check next highlighted word"
  (interactive)
  (flyspell-goto-next-error)
  (ispell-word)
  )
(global-set-key (kbd "M-<f8>") 'flyspell-check-next-highlighted-word)
;;;;;;					End spell checking
