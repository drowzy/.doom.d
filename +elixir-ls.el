;;; ~/.doom.d/+elixir-ls.el -*- lexical-binding: t; -*-
;;
(after! lsp-clients
  (lsp-register-client
   (make-lsp-client :new-connection
                    (lsp-stdio-connection "~/.elixir-ls/release/language_server.sh")
                    :major-modes '(elixir-mode)
                    :priority 1
                    :server-id 'elixir-ls)))

(add-hook 'elixir-mode-hook #'lsp!)
