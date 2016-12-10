(require 'package)

(add-to-list 'package-archives
  '("melpa" . "http://melpa.milkbox.net/packages/"))

(package-initialize)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)

;; requires emacs 24.4
;(global-superword-mode 1)

; store backup files in .saves
(setq backup-directory-alist `(("." . "~/.saves")))

(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))

(global-set-key "\M-," 'ggtags-prev-mark)
(global-set-key "\M-/" 'ggtags-next-mark)
