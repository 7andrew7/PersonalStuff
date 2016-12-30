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

; wget https://raw.githubusercontent.com/google/styleguide/gh-pages/google-c-style.el
(add-to-list 'load-path "~/")
(require 'google-c-style)
(add-hook 'c-mode-common-hook 'google-set-c-style)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (ggtags auto-complete))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
