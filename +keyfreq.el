;;; ~/.doom.d/+keyfreq.el -*- lexical-binding: t; -*-

(def-package! keyfreq
  :commands (keyfreq-show)
  :config
  (keyfreq-mode 1)
  (keyfreq-autosave-mode 1))
