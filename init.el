(require 'ob-tangle)

;; Tangle and load core settings
(org-babel-load-file (expand-file-name "~/org/settings/core-settings.org"))

;; Tangle and load cosmetic settings if not in terminal
(unless (or (daemonp) (not (display-graphic-p)))
  (org-babel-load-file (expand-file-name "~/org/settings/cosmetic-settings.org")))

(provide 'init)
