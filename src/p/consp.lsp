(defun p:consp (lst)
  "判断是否为构造表，这里 nil 不是构造表"
  "T or nil"
  (vl-consp lst))
