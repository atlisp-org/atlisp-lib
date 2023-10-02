(defun string:split (str separator / pos)
  "将字符串用separator分隔成列表，separator 可以是字符或由字符组成的表。"
  (cond
    ((= 'str (type separator))
     (string:to-list str separator))
    ((listp separator)
     (string:parse-by-lst str separator)))
  )
