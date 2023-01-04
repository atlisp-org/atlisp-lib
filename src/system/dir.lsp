(defun system:dir (str)
  "字符串路径目录化，以 / 结尾."
  (if (= 92 (last (vl-string->list str)))
      str
    (strcat str "\\")))
