(defun string:realp (str)
  "确定字符串是否为实数"
  (and (string:numberp str)
    (or (= "."
        (substr str 1 1))
      (= "-."
        (substr str 1 2))
      (= "+."
        (substr str 1 2))
      (= (quote int)
        (type (read str)))
      (= (quote real)
        (type (read str))))))
