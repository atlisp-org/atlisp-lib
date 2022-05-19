(defun string:intp (str)
  "确定字符串是否为整数"
  (and (string:numberp str)
    (not (or (= "."
          (substr str 1 1))
        (= "-."
          (substr str 1 2))
        (= "+."
          (substr str 1 2))))
    (= (quote int)
      (type (read str)))))
