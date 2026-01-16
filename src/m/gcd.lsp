(defun m:gcd (a b)
  "求最大公约数"
  (cond
   ((or (= b 0)(= a 0))
    (princ "求公约数的参数不能为0"))
   (t  (gcd a b))))
