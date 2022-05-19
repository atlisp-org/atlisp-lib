(defun string:reverse (str)
  "反转字符串"
  (vl-list->string (reverse (vl-string->list str))))
