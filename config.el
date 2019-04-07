;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here
;;
(load! "+bindings")

(setq-default
 user-full-name "Simon Thörnqvist"
 user-mail-address "simon@plug-n-trade.com"

 doom-font (font-spec :family "Sauce Code Powerline" :size 14)
 doom-big-font (font-spec :family "Sauce Code Powerline" :size 16)


 evil-escape-key-sequence "fd"
 )


(doom-themes-neotree-config)
(setq doom-neotree-file-icons t)

(def-package! linum-relative
  :config
  (setq linum-relative-backend 'display-line-numbers-mode)
  (linum-relative-global-mode))

(load! "+reason")
(load! "+elixir-ls")
(load! "+dap")
(load! "+keyfreq")
