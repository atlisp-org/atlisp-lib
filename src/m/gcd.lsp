(defun m:gcd (a b)
  "求最大公约数，使用欧几里得算法"
  "integer - 返回最大公约数，参数为0时返回nil"
  ;; 参数为0时返回nil
  (cond
   ((= b 0)
    (princ "警告: b参数不能为0"))
   ((= a 0)
    (princ "警告: a参数不能为0"))
   (t
    ;; 使用绝对值处理负数
    (gcd (abs a) (abs b)))))
