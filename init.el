(tool-bar-mode 0)
(menu-bar-mode 0)

(setq fill-column 80)

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


