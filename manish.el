;(add-to-list 'load-path "~/.emacs.d/slime/")  ; your SLIME directory
;(setq inferior-lisp-program "/usr/bin/sbcl") ; your Lisp system
;(require 'slime)
;(require 'slime-autoloads)
;(slime-setup)
;(slime-setup '(slime-scratch slime-editing-commands))
;(slime-setup '(slime-repl)) ; almost everything
(defvar *home-dir* "/home/manish/")
(add-to-list 'load-path (concatenate 'string *home-dir* ".emacs.d/lisp/redshank"))
(global-set-key [f5] 'mark-sexp)

(require 'redshank-loader )
           
(eval-after-load "redshank-loader"
  `(redshank-setup '(lisp-mode-hook
                     slime-repl-mode-hook) t))


(setq auto-mode-alist (append '(
                                ("\\.py$" . python-mode)
                                ("\\.conf$" . conf-mode)
                                ("\\.sh$" . shell-script-mode)
                                ("\\.txt$" . text-mode)
                                ("\\.lua$" . lua-mode) ; Lua ;)
                                ("\\.js$" . javascript-mode)
                                ("\\.lisp" . lisp-mode)
                                ) auto-mode-alist))

(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code."
  t)
(autoload 'redshank-mode "redshank"
  "Minor mode for editing and refactoring (Common) Lisp code."
  t)
(autoload 'turn-on-redshank-mode "redshank"
  "Turn on Redshank mode.  Please see function `redshank-mode'."
  t)
(add-hook 'slime-repl-mode-hook 'turn-on-redshank-mode)
(add-hook 'slime-repl-mode-hook 'paredit-mode)
(add-hook 'lisp-mode-hook 'paredit-mode)
(add-hook 'lisp-mode-hook 'turn-on-redshank-mode)


(setq user-mail-address "manish.ym@gmail.com")
(setq user-full-name "Manish M Yathnalli")
