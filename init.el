(tool-bar-mode 0)
(menu-bar-mode 0)
(set-face-attribute 'default nil :height 110 :family "Iosevka Nerd Font")

(setq fill-column 80)

(global-auto-revert-mode 1)

(require 'use-package)

(use-package modus-themes
  :ensure t
  :demand t
  :config
  (setq modus-themes-headings
      '((1 . (variable-pitch 1.8))
        (2 . (1.4))
        (3 . (1.2))
        (4 . (1.1))))
  (modus-themes-load-theme 'modus-operandi-tinted))

(use-package adaptive-wrap
  :ensure t)

(use-package visual-fill-column
  :ensure t)

(use-package markdown-mode
  :ensure t
  :hook
  (markdown-mode . visual-line-mode)
  (markdown-mode . adaptive-wrap-prefix-mode)
  (markdown-mode . visual-fill-column-mode))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
