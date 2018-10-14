;;; ~/.doom.d/+bindings.el -*- lexical-binding: t; -*-

(map!
 (:leader
   :desc "Ex command" :nv "!"  #'evil-ex
   :desc "Terminal in popup" :n "'" #'+term/open-popup-in-project
   :desc "[un]comment" :n  ";"  #'evil-commentary))
