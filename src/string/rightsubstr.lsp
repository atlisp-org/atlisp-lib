(defun string:rightsubstr (str len)
  "从右侧取 len 个字符"
  (substr str (- (strlen str) len -1) len))
