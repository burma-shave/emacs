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
      '((1 . (variable-pitch 1.4))
        (2 . (1.2))
        (3 . (1.1))
        (4 . (1.0))))
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


(require 'server)
(unless (server-running-p) (server-start))

(use-package org
  :ensure nil
  :bind ("C-c c" . org-capture)
  :hook
  (org-mode . visual-line-mode)
  (org-mode . adaptive-wrap-prefix-mode)
  (org-mode . visual-fill-column-mode)
  :config
  (setq org-directory "~/org")
  (setq org-capture-templates
        '(("l" "OBA Logbook" entry
           (file (lambda ()
                   (expand-file-name
                    (format-time-string "%Y-%m-%d.org")
                    "~/org/oba/logbook")))
           "* %<%H:%M> %i%?\n  %T\n"
           :empty-lines 1)))
  (defun oba-log (text)
    (let ((org-capture-initial text)
          (org-capture-entry
           (append (copy-tree (assoc "l" org-capture-templates))
                   '(:immediate-finish t))))
      (org-capture)))
  (setq org-agenda-custom-commands
        '(("o" "OBA Logbook" agenda ""
           ((org-agenda-files (directory-files "~/org/oba/logbook" t "\\.org$")))))))

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
