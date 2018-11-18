;; -*- no-byte-compile: t; -*-
;;; completion/lsp/packages.el
;;;
(when (package! lsp-mode)
  (package! lsp-ui)
  (package! company-lsp)

  (when (featurep! +javascript)
    (package! lsp-typescript
      :recipe (:fetcher
               github
               :repo "emacs-lsp/lsp-javascript"
               :files ("lsp-typescript.el")))
    (package! tide :disable t))

  (when (featurep! +sh)
    (package! company-shell :disable t)))
