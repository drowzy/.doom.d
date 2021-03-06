;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)
;;
;; tools
(package! kubernetes)
(package! kubernetes-evil)
;; editor
(package! linum-relative)
;; lang
(package! reason-mode)
(package! keyfreq :recipe (:fetcher github :repo "dacap/keyfreq" :files ("keyfreq.el")))
(package! alchemist-company :disable t)
(package! alchemist :disable t)
(package! dap-mode)
(package! fsharp-mode)
