;;; key-chord: permet d’associer des raccourcis claviers à la frappe de deux touches de clavier standard (donc sans passer par Ctr, Super, F. ou Met-4)
(require 'key-chord)
(key-chord-mode 1)

(key-chord-define-global ";;" 'find-file)
(key-chord-define-global "àà" 'save-buffer)
(key-chord-define-global "vv" 'dabbrev-expand);autocomplétion dynamique: cherche à partir des mots rédigés plus haut dans le fichier
(key-chord-define-global "vd" 'define-global-abbrev)
(key-chord-define-global "vl" 'define-mode-abbrev)
(key-chord-define-global "hh" 'fill-paragraph);égalise et indente le paragraphe
(key-chord-define-global "zz" 'ecb-activate)
(key-chord-define-global "xx" 'delete-other-windows)


(add-hook 'LaTeX-mode-hook
              '(lambda ()
    ;;; key-chord + auctex

    ;compilation
(key-chord-define LaTeX-mode-map "::" 'TeX-command-buffer);la commande s’applique au buffer en utilisant le préambule du document-maitre
(key-chord-define LaTeX-mode-map ".." 'TeX-command-region);la commande s’applique  à la région selectionnée en utilisant le préambule du document-maitre
(key-chord-define LaTeX-mode-map "qq" 'TeX-command-master);la commande s’applique  à tout le document
(key-chord-define LaTeX-mode-map "kk" 'TeX-recenter-output-buffer);accès au log de compilation latex
(key-chord-define LaTeX-mode-map "KK" 'TeX-master-file-ask)

(key-chord-define LaTeX-mode-map "bp" 'TeX-normal-mode);élimine toutes les informations de auto/ sur le tampon et réapplique les styles (style-hooks)
;(key-chord-define LaTeX-mode-map "dv" 'TeX-pdf-mode)
;(key-chord-define LaTeX-mode-map "ww" 'TeX-save-document);sauve toutes les fenêtres ouvertes appartenant au document
    ;insertion
(key-chord-define LaTeX-mode-map "èè" 'TeX-insert-macro)
(key-chord-define LaTeX-mode-map "uu" 'LaTeX-insert-item)
(key-chord-define LaTeX-mode-map "aa" 'LaTeX-environment)
(key-chord-define LaTeX-mode-map "yy" 'LaTeX-close-environment)
    ;autres
(key-chord-define LaTeX-mode-map "hh" 'TeX-master-file-ask)
(key-chord-define LaTeX-mode-map "fh" 'TeX-fold-paragraph)
(key-chord-define LaTeX-mode-map "%%" 'TeX-comment-or-uncomment-region)
))
