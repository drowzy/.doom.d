;;; completion/lsp/config.el -*- lexical-binding: t; -*-

(def-package! lsp-mode
  :commands (lsp-mode lsp-define-stdio-client))

(def-package! lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :config
  (set-lookup-handlers! 'lsp-ui-mode
                        :definition #'lsp-ui-peek-find-definitions
                        :references #'lsp-ui-peek-find-references)
  (setq lsp-ui-doc-max-height 16
        lsp-ui-doc-max-width 64
        lsp-ui-sideline-ignore-duplicate t
        lsp-ui-doc-position 'at-point))

(def-package! lsp-typescript
  :when (featurep! +javascript)
  :hook ((js2-mode typescript-mode) . lsp-typescript-enable))

(def-package! company-lsp
  :after lsp-mode
  :config
  (set-company-backend! 'lsp-mode 'company-lsp)
  (setq company-lsp-enable-recompletion t))

(when (featurep! +sh)
  (after! sh-script
    (lsp-define-stdio-client lsp-sh
                            "sh"
                            #'projectile-project-root
                            '("bash-language-server" "start"))
    (add-hook 'sh-mode-hook #'lsp-sh-enable)))
