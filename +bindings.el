;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

(map!
 (:leader
   :desc "Ex command" :nv "!"  #'evil-ex
   :desc "Terminal in popup" :n "'" #'+term/open-popup-in-project
   :desc "Toggle buffer" :n "`" #'+drowzy/switch-to-previous-buffer
   :desc "[un]comment" :n  ";"  #'evil-commentary

   (:desc "window" :prefix "w"
     :n "/" #'evil-window-vsplit
     :n "_" #'evil-window-split
     :n "d" #'+workspace/close-window-or-workspace)

   (:desc "buffer" :prefix "b"
     :desc "List buffers" :n "b" #'ivy-switch-buffer
     :desc "Close buffer" :n "d" #'kill-this-buffer)
   (:desc "project" :prefix "p"
     :desc "Switch project"                :n  "p" #'projectile-switch-project
     (:when (featurep! :ui neotree)
       :desc "Project sidebar"              :n  "t" #'+neotree/open)
     (:when (featurep! :ui treemacs)
       :desc "Project sidebar"              :n  "t" #'+treemacs/toggle))))
