(load-file "~/.emacs.d/init.el")
(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global ";;" 'find-file)
(key-chord-define-global "àà" 'save-buffer)
(key-chord-define-global "vv" 'dabbrev-expand);autocomplétion dynamique: cherche à partir des mots rédigés plus haut dans le fichier
(key-chord-define-global "vd" 'define-global-abbrev)
(key-chord-define-global "vl" 'define-mode-abbrev)
(key-chord-define-global "hh" 'fill-paragraph);égalise et indente le paragraphe
