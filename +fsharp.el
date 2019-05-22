;;; ~/.doom.d/+fsharp.el -*- lexical-binding: t; -*-

(after! fsharp-mode
  (setq fsharp-ac-use-popup nil) ; Use a buffer for docs rather than a pop-up
  (set-lookup-handlers! 'fsharp-mode :async t :definition #'fsharp-ac/gotodefn-at-point)
  (set-repl-handler! 'fsharp-mode #'fsharp-show-subshell)
  (setq-default fsharp-indent-offset 2)
  (map! :localleader
        :map fsharp-mode-map
        "b" #'fsharp-ac/pop-gotodefn-stack ; Useful for re-tracing your steps
        "l" #'fsharp-load-buffer-file
        "q" #'fsharp-ac/stop-process
        "t" #'fsharp-ac/show-tooltip-at-point))

(after! lsp-clients
  (lsp-register-client
   (make-lsp-client :new-connection
                    (lsp-stdio-connection "~/.fsharp-ls/src/FSharpLanguageServer/bin/Release/netcoreapp2.0/linux-x64/publish/FSharpLanguageServer")
                    :major-modes '(fsharp-mode)
                    :priority 1
                    :server-id 'fsharp-ls)))

(add-hook 'fsharp-mode-hook #'lsp!)
