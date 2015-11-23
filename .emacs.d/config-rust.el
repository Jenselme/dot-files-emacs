(setq racer-rust-src-path "/home/jenselme/Downloads/rust/rust/src/")
(setq racer-cmd "/home/jenselme/tests/rust/racer/target/release/racer")
(add-to-list 'load-path "/home/jenselme/tests/rust/racer/editors/emacs")
(eval-after-load "rust-mode" '(require 'racer))

(add-hook 'rust-mode-hook
  '(lambda ()
     (racer-activate)
     (local-set-key (kbd "M-.") #'racer-find-definition)
     (local-set-key (kbd "^-SPC") #'racer-complete-or-indent)))
