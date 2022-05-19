(defun p:picksetp (ss)
  "判断是否非空选择集"
  (and (= (type ss)
      (quote pickset))
    (> (sslength ss)
      0)))
