(defun p:stringp (arg)
  "判断是否字符串"
  (equal (type arg)
    (quote str)))
