;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

(map!

 :n "C-h"   #'evil-window-left
 :n "C-j"   #'evil-window-down
 :n "C-k"   #'evil-window-up
 :n "C-l"   #'evil-window-right

 (:after magit
   (:map with-editor-mode-map
     (:prefix ","
       :desc "Commit" :n "c" #'with-editor-finish
       :desc "Abort commit" :n "a" #'with-editor-cancel
       )))

  (:after restclient
    (:map restclient-mode-map :localleader :n "s" #'restclient-http-send-current))

 (:leader
   :desc "Ex command" :nv "!"  #'evil-ex
   ;; :desc "Terminal in popup" :n "'" #'+term/open-popup-in-project
   :desc "Terminal in popup" :n "'" #'+eshell/open-popup
   :desc "Toggle buffer" :n "`" #'+drowzy/switch-to-previous-buffer
   :desc "[un]comment" :nv  ";"  #'evil-commentary-line
   :desc "text-scale" :n "=" #'doom-text-zoom-hydra/body

   (:desc "window" :prefix "w"
     :n "/" #'evil-window-vsplit
     :n "_" #'evil-window-split
     :n "d" #'+workspace/close-window-or-workspace
     :n "." #'doom-window-nav-hydra/body)

   (:desc "kubernetes" :prefix "k"
     :desc "Cluster status" :n "k" #'kubernetes-overview
     :desc "Pod view" :n "p" #'kubernetes-display-pod
     :desc "Service view" :n "s" #'kubernetes-display-service
     :desc "Job view" :n "j" #'kubernetes-display-job
     :desc "Configmap view" :n "c" #'kubernetes-display-job
     :desc "Secret view" :n "x" #'kubernetes-display-secret)

   (:desc "buffer" :prefix "b"
     :desc "List buffers" :n "b" #'ivy-switch-buffer
     :desc "Close buffer" :n "d" #'kill-this-buffer)

   (:prefix "f"
     :desc "Save file (Spacemacs)" :n "s" #'save-buffer
     :desc "Find file (Spacemacs)" :n "f" #'find-file)

   (:desc "project" :prefix "p"
     :desc "Find project file (Spacemacs)" :n "f" #'projectile-find-file
     :desc "Switch project"                :n  "p" #'projectile-switch-project
     (:when (featurep! :ui neotree)
       :desc "Project sidebar"              :n  "t" #'+neotree/open)
     (:when (featurep! :ui treemacs)
       :desc "Project sidebar"              :n  "t" #'+treemacs/toggle))))
