(defun system:dir (str)
  "字符串路径目录化，即结尾是 \\ "
  (if (= 92 (last (vl-string->list str)))
      str
    (strcat str "\\")))
