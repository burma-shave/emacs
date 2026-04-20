(tool-bar-mode 0)
(menu-bar-mode 0)

(setq fill-column 80)

(require 'use-package)

(use-package adaptive-wrap
  :ensure t)

(use-package visual-fill-column
  :ensure t)

(use-package markdown-mode
  :ensure t
  :hook
  (markdown-mode . visual-line-mode)
  (markdown-mode . adaptive-wrap-prefix-mode)
  (markdown-mode . visual-fill-column-mode)
  :init
  (setq markdown-header-scaling t))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango))
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
