;;; ~/.doom.d/autoload/drowzy.el -*- lexical-binding: t; -*-

;;;###autoload
(defun +drowzy/switch-to-previous-buffer ()
  "Toggles between current/previous buffer."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

;;;###autoload
(defun +drowzy/url-encode-region (start end)
  (interactive "r")
  (let ((text (url-hexify-string (buffer-substring-no-properties start end))))
    (delete-region start end)
    (insert text)))

;;;###autoload
(defun +drowzy/url-decode-region (start end)
  (interactive "r")
  (let ((text (url-unhex-string (buffer-substring-no-properties start end))))
    (delete-region start end)
    (insert text)))
