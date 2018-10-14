;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

(map!
 (:leader
   :desc "Ex command" :nv "!"  #'evil-ex
   :desc "Terminal in popup" :n "'" #'+term/open-popup-in-project
   :desc "Toggle buffer" :n "`" #'+drowzy/switch-to-previous-buffer
   :desc "[un]comment" :n  ";"  #'evil-commentary))
