(defun m:gcd (a b)
  "求最大公约数，使用欧几里得算法"
  "integer - 返回最大公约数，参数为0时返回nil"
  "(m:gcd 12 8) => 4"
  "(m:gcd 0 8) => nil"
  (cond
   ((or (= a 0) (= b 0)) nil)
   (t (gcd (abs a) (abs b)))))