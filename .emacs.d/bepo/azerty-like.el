(global-unset-key "\C-x\C-f")
(global-unset-key "\C-x\C-s")
(global-unset-key "\C-x\C-w")
(global-unset-key "\C-x\C-c")
(global-unset-key "\C-xk")
(global-unset-key "\C-xb")
(global-unset-key "\C-s")
(global-unset-key "\C-g")
;;(global-unset-key "\C-h") ;; Help - commenté, on enlève pas
(global-unset-key "\C-b") ;; backward-char
(global-unset-key "\C-f") ;; forward-char
(global-unset-key "\C-p") ;; previous-line
(global-unset-key "\C-n") ;; next-line
(global-unset-key "\M-b") ;; backward-word
(global-unset-key "\M-f") ;; forward-word
(global-unset-key "\C-v") ;; scroll-up
(global-unset-key "\M-v") ;; scroll-down
(global-unset-key "\C-\M-b") ;; backward-sexp
(global-unset-key "\C-\M-f") ;; forward-sexp
(global-unset-key "\C-w")
(global-unset-key "\M-w")
(global-unset-key "\C-y") ;; yank
(global-unset-key "\M-y") ;; yank-pop
(global-unset-key "\C-k") ;; kill-line
(global-unset-key "\M-k") ;; kill-sentence
(global-unset-key "\C-\M-k") ;; kill-sexp
(global-unset-key "\M-x")

(global-unset-key "\C-x")

;; Déplacement du C-x
(global-set-key "\C-y" ctl-x-map)

;; C-x C-f (Ouvrir un fichier)
(global-set-key "\C-y\C-e" 'find-file)

;; C-x C-s (Sauver le buffer)
(global-set-key "\C-y\C-u" 'save-buffer)

;; C-x C-w (Enregistrer sous)
;(global-set-key [?\C-y\C-à] 'write-file)

;; C-x C-c (Quitter)
(global-set-key "\C-y\C-x" 'save-buffers-kill-emacs)

;; C-x k (Fermer un tampon)
(global-set-key "\C-ys" 'kill-buffer)

;; C-x b (Changer de tampon)
(global-set-key "\C-yk" 'switch-to-buffer)

;; C-s (Rechercher)
(global-set-key "\C-u" 'isearch-forward)

;; C-g (Annuler la commande en cours)
(global-set-key (kbd "C-,") 'keyboard-quit)

;; C-h (Appeler l'aide) - Ou pas
;;(global-set-key "\C-c" 'help-command)

;; C-h (Reculer d'un caractère)
(global-set-key "\C-c" 'backward-char)

;; C-l (Avancer d'un caractère)
(global-set-key "\C-r" 'forward-char)

;; C-j (Ligne précédente)
(global-set-key "\C-t" 'previous-line)

;; C-k (Ligne suivante)
(global-set-key "\C-s" 'next-line)

;; M-h (Reculer d'un mot)
(global-set-key "\M-c" 'backward-word)

;; M-l (Avancer d'un mot)
(global-set-key "\M-r" 'forward-word)

;; M-j (Scroll down)
(global-set-key "\M-t" 'scroll-down)

;; M-k (Scroll up)
(global-set-key "\M-s" 'scroll-up)

;; C-M-h (Reculer jusqu'à un espace)
(global-set-key "\C-\M-c" 'backward-sexp)

;; C-M-l (Avancer jusqu'à un espace)
(global-set-key "\C-\M-r" 'forward-sexp)

;; C-w (Couper une région)
(global-set-key (kbd "C-à") 'kill-region)

;; M-w (Copier une région)
(global-set-key (kbd "M-à") 'kill-ring-save)

;; C-v (Coller)
(global-set-key (kbd "C-.") 'yank)

;; M-v (Changer le collé)
(global-set-key (kbd "M-.") 'yank-pop)

;; C-a (Supprimer une ligne)
(global-set-key "\C-b" 'kill-line)

;; M-a (Supprimer une phrase)
(global-set-key "\M-b" 'kill-sentence)

;; C-M-a (??)
(global-set-key "\C-\M-b" 'kill-sexp)

;; M-x (Exécuter une commande)
(global-set-key "\M-y" 'execute-extended-command)

;; C-y (Yank) is needed !!!
;; (global-set-key "\C-!") 'yank) DOES NOT WORK

;; M-y (Yank-pop) is needed !!!
;;(global-set-key "\M-!") 'yank-pop) DOES NOT WORK
