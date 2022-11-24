(defun string:reverse (str)
  "反转字符串,支持中文"
  "Str"
  (string:l2s-ansi (reverse (string:s2l-ansi str))))
