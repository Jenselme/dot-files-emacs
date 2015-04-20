;;; company-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "company" "company.el" (21812 41716 572409
;;;;;;  418000))
;;; Generated autoloads from company.el

(autoload 'company-mode "company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific back-end, call
it interactively or use `company-begin-backend'.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global-Company mode is enabled.
See the command `global-company-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company" nil)

(autoload 'global-company-mode "company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global-Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "company-abbrev" "company-abbrev.el" (21812
;;;;;;  41716 713410 848000))
;;; Generated autoloads from company-abbrev.el

(autoload 'company-abbrev "company-abbrev" "\
`company-mode' completion back-end for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-bbdb" "company-bbdb.el" (21812 41716
;;;;;;  697410 686000))
;;; Generated autoloads from company-bbdb.el

(autoload 'company-bbdb "company-bbdb" "\
`company-mode' completion back-end for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "company-css" "company-css.el" (21812 41716
;;;;;;  569409 387000))
;;; Generated autoloads from company-css.el

(autoload 'company-css "company-css" "\
`company-mode' completion back-end for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-dabbrev" "company-dabbrev.el" (21812
;;;;;;  41716 677410 483000))
;;; Generated autoloads from company-dabbrev.el

(autoload 'company-dabbrev "company-dabbrev" "\
dabbrev-like `company-mode' completion back-end.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-dabbrev-code" "company-dabbrev-code.el"
;;;;;;  (21812 41716 584409 540000))
;;; Generated autoloads from company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-dabbrev-code" "\
dabbrev-like `company-mode' back-end for code.
The back-end looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-elisp" "company-elisp.el" (21812 41716
;;;;;;  721410 930000))
;;; Generated autoloads from company-elisp.el

(autoload 'company-elisp "company-elisp" "\
`company-mode' completion back-end for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-etags" "company-etags.el" (21812 41716
;;;;;;  577409 469000))
;;; Generated autoloads from company-etags.el

(autoload 'company-etags "company-etags" "\
`company-mode' completion back-end for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-files" "company-files.el" (21812 41716
;;;;;;  681410 524000))
;;; Generated autoloads from company-files.el

(autoload 'company-files "company-files" "\
`company-mode' completion back-end existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-gtags" "company-gtags.el" (21812 41716
;;;;;;  548409 174000))
;;; Generated autoloads from company-gtags.el

(autoload 'company-gtags "company-gtags" "\
`company-mode' completion back-end for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-ispell" "company-ispell.el" (21812
;;;;;;  41716 717410 889000))
;;; Generated autoloads from company-ispell.el

(autoload 'company-ispell "company-ispell" "\
`company-mode' completion back-end using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-keywords" "company-keywords.el" (21812
;;;;;;  41716 689410 605000))
;;; Generated autoloads from company-keywords.el

(autoload 'company-keywords "company-keywords" "\
`company-mode' back-end for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-nxml" "company-nxml.el" (21812 41716
;;;;;;  701410 727000))
;;; Generated autoloads from company-nxml.el

(autoload 'company-nxml "company-nxml" "\
`company-mode' completion back-end for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-oddmuse" "company-oddmuse.el" (21812
;;;;;;  41716 562409 317000))
;;; Generated autoloads from company-oddmuse.el

(autoload 'company-oddmuse "company-oddmuse" "\
`company-mode' completion back-end for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-semantic" "company-semantic.el" (21812
;;;;;;  41716 552409 215000))
;;; Generated autoloads from company-semantic.el

(autoload 'company-semantic "company-semantic" "\
`company-mode' completion back-end using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-tempo" "company-tempo.el" (21812 41716
;;;;;;  588409 580000))
;;; Generated autoloads from company-tempo.el

(autoload 'company-tempo "company-tempo" "\
`company-mode' completion back-end for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-xcode" "company-xcode.el" (21812 41716
;;;;;;  710410 818000))
;;; Generated autoloads from company-xcode.el

(autoload 'company-xcode "company-xcode" "\
`company-mode' completion back-end for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads nil "company-yasnippet" "company-yasnippet.el"
;;;;;;  (21812 41716 705410 767000))
;;; Generated autoloads from company-yasnippet.el

(autoload 'company-yasnippet "company-yasnippet" "\
`company-mode' back-end for `yasnippet'.

This back-end should be used with care, because as long as there are
snippets defined for the current major mode, this back-end will always
shadow back-ends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a back-end or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other back-ends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil nil ("company-capf.el" "company-clang.el" "company-cmake.el"
;;;;;;  "company-eclim.el" "company-pkg.el" "company-template.el")
;;;;;;  (21812 41716 731330 185000))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; company-autoloads.el ends here
