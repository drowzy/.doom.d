;;; ~/.doom.d/autoload/drowzy.el -*- lexical-binding: t; -*-

;;;###autoload
(defun +drowzy/switch-to-previous-buffer ()
  "Toggles between current/previous buffer."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))
