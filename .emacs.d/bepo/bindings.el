;; Ici, les modification de commandes prévues pour modifier emacs

;; Objectifs:
;;   - Reperer les quelques commandes que j'utilise sans arrêt
;;   - Re-mapper les quelques commandes que j'utilise sans arrêt
;;   - Pouvoir passer à une disposition emacs pour BÉPO aisément
;;   - Un déplacement dans le fichier à la vim, peut-être ?

;;On charge les librairies de fonctions personnalisées
;(load "~/bepo_emacs/functions.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Deplacement main droite ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Déplacement avec grain 1: ctrsnm
;(global-set-key [?\C-c] 'move-beginning-of-line) ;; A assigner en fin de fichier !!
(global-set-key [?\C-t] 'backward-char)
(global-set-key [?\C-s] 'next-line)
(global-set-key [?\C-r] 'previous-line)
(global-set-key [?\C-n] 'forward-char)
;;/!\(global-set-key "\C-m" 'move-end-of-line) ;; A assigner en fin de fichier !!

;; Déplacement avec grain 2: ctrsnmr
(global-set-key [?\M-c] 'beginning-of-buffer)
(global-set-key [?\M-t] 'backward-word)
(global-set-key [?\M-s] 'scroll-up)
(global-set-key [?\M-r] 'scroll-down)
(global-set-key [?\M-n] 'forward-word)
(global-set-key [?\M-m] 'end-of-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Suppression main droite ;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Suppression avec grain 1: ,qghfç
(global-set-key [?\C-'] 'backward-kill-line)
(global-set-key [?\C-q] 'backward-delete-char-untabify)
(global-set-key [?\C-g] 'kill-whole-line)
(global-set-key [?\C-h] 'kill-region)
(global-set-key [?\C-f] 'delete-char)
(global-set-key (kbd "C-ç") 'kill-line)

;; Suppression avec grain 2: ctrsnm
;(global-set-key [?\M-'] ') ;TODO: kill to beginning of buffer
(global-set-key [?\M-q] 'backward-kill-word)
;(global-set-key [?\M-g] ') ;TODO: Copy whole line
(global-set-key [?\M-h] 'kill-ring-save)
(global-set-key [?\M-f] 'kill-word)
;(global-set-key [?\M-ç] ') ;TODO: kill to end of buffer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Insertion main droite ;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Commandes groupées par 2, de la gauche vers la droite

;search and replace avant et arrière
(global-set-key (kbd "<C-dead-circumflex>") 'query-replace)
;;(global-set-key [?\M-^] ');;TODO query-replace backwards, ou autre commande ? et BUG: problème avec M + dead key de toute manière

;; ;search
(global-set-key [?\C-v] 'isearch-forward)
(global-set-key [?\M-v] 'isearch-backward)

;autocompletion ou center curseur
(global-set-key [?\C-d] 'dabbrev-expand)
(global-set-key [?\M-d] 'recenter-top-bottom)

;yank et yank alt
(global-set-key [?\C-l] 'yank)
(global-set-key [?\M-l] 'yank-pop)

;indent region
;;/!\(global-set-key [?\C-j] 'indent-region) ;; A assigner en fin de fichier!!!
;(global-set-key [?\M-j] ') ;;;; NO IDEA

;comment-region et uncomment-region
(global-set-key [?\C-z] 'comment-region)
(global-set-key [?\M-z] 'uncomment-region)

;goto et "repeat X times"
(global-set-key [?\C-w] 'goto-line)
(global-set-key [?\M-w] 'universal-argument)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Touches Fx, deux mains ;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;main gauche: Macros, repetition et minibuffer (commandes)
(global-set-key [f1] 'kmacro-start-macro) ;;TODO fonction start/end macro
(global-set-key [f2] 'kmacro-end-and-call-macro)
(global-set-key [f3] 'repeat)
(global-set-key [f4] 'execute-extended-command)
(global-set-key [f5] 'keyboard-escape-quit)

;main droite: undo, compilation, extinction d'emacs et help
(global-set-key [f6] 'undo) ;TODO un redo en complement
(global-set-key [f7] 'next-error)
(global-set-key [f8] 'compile)
;(global-set-key [f9] ') ;; No Idea
;(global-set-key [f10] 'suspend-frame);; ON ne touche pas a F10. equivalent C-z a replacer ?
(global-set-key [f11] 'save-buffers-kill-terminal)
(global-set-key [f12] 'help-for-help)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Buffers main gauche ;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ligne de repos auie,
(global-set-key [?\C-a] 'list-buffers)
(global-set-key [?\C-u] 'switch-to-buffer)
;;/!\(global-set-key [?\C-i] '(other-window -1)) ;; A assigner en fin de fichier
(global-set-key [?\C-e] 'other-window)
(global-set-key [?\C-,] 'shrink-window-horizontally)

;; ligne au dessus du repos bépoè
(global-set-key [?\C-b] 'delete-other-windows)
(global-set-key (kbd "C-é") 'delete-window)
(global-set-key [?\C-p] 'split-window-vertically)
(global-set-key [?\C-o] 'split-window-horizontally)
(global-set-key (kbd "C-è") 'enlarge-window-horizontally)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Fichiers main gauche ;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Sous ligne de repos auie,
(global-set-key [?\C-à] 'write-file)
(global-set-key [?\C-y] 'save-buffer)
;(global-set-key [?\C-x] '); COMPATIBILITÉ, ON Y TOUCHE PAS; le 'X' pour C-x et M-x
(global-set-key [?\C-.] 'find-file)
;(global-set-key [?\C-k] '); NO idea

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Divers ;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;ESPACE
;(global-set-key [?\C-space] 'set-mark-command)
;(global-set-key [?\M-space] 'mark-whole-buffer)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Comportemen logique pour les flèches, supr et backspace ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Déplacement avec les différents grains: (haut bas gauche droite avec C- et M-)
;;    caractère : gauche droite ;;NATIF
;;    mot : ctrl + gauche droite
(global-set-key [C-left] 'backward-word)
(global-set-key [C-right] 'forward-word)

;;    debut/fin ligne : alt + gauche droite
(global-set-key [M-left] 'beginning-of-line)
(global-set-key [M-right] 'end-of-line)

;;    ligne : haut bas ;;NATIF
;;    paragraphe : ctrl + haut bas ;;NATIF
;;    début/fin de texte : alt + haut bas
(global-set-key [M-up] 'beginning-of-buffer)
(global-set-key [M-down] 'end-of-buffer)

;;    Scroll Up/Scroll down : ;;NATIF page up&donw


;; Suppression avec différents grains: backspace et del
;;    Vers l'avant/ vers l'arrière:
;;      caractère :
(global-set-key [suppr] 'delete-char) ;; avant
(global-set-key [backspace] 'backward-delete-char-untabify) ;; arrière
;;      mot
(global-set-key [C-suppr] 'kill-word) ;; avant
(global-set-key [C-backspace] 'backward-kill-word) ;; arrière

;;      reste de la ligne
(global-set-key [M-suppr] 'kill-line) ;; avant
(global-set-key [M-backspace] 'backward-kill-line) ;; arrière

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Gestion des commandes conflictuelles ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;Emacs traine de vielles casseroles dues à sa gestion ASCII des caractères
;;C-i et TAB sont identiques
;;C-j et suppr sont identiques
;;C-m et entrée sont identiques
;;Si on assigne C-m par exemple, on perd la touche entrée
;;La seule solution pour éviter ça, est le hack ci-dessous:

;; Translate the problematic keys to the function key Hyper:
(keyboard-translate ?\C-i ?\H-i)
(keyboard-translate ?\C-m ?\H-m)
(keyboard-translate ?\C-j ?\H-j)
;; Rebind then accordantly:
(global-set-key [?\H-m] 'move-end-of-line)
(global-set-key [?\H-j] 'indent-region)
(global-set-key [?\H-i] 'other-window-backward)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Bonux ;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ;; Treat 'y' or <CR> as yes, 'n' as no.
;; ;(fset 'yes-or-no-p 'y-or-n-p)
;; ;(define-key query-replace-map [return] 'act)
;; ;(define-key query-replace-map [?\C-m] 'act)

;(global-set-key "\C-c" 'move-beginning-of-line)
(define-key key-translation-map "\C-k" "\C-c")
(define-key key-translation-map "\C-c" "\C-a")
