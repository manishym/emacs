;(add-to-list 'load-path "~/.emacs.d/slime/")  ; your SLIME directory
;(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
;(require 'slime)
;(require 'slime-autoloads)
;(slime-setup)
;(slime-setup '(slime-scratch slime-editing-commands))
;(slime-setup '(slime-repl)) ; almost everything
(require 'git)
(require 'git-blame)
(fset 'lisp-copy-defun
   [?\C-r ?\( ?d ?e ?f ?\C-m right ?\C-\M-a ?\C-\M-@ ?\M-w ?\C-x ?o ?\M-> return ?\C-y ?\C-\M-a ?\C-\M-@ ?\C-\M-q ?\M-> ?\C-x ?\C-s ?\C-x ?o])
