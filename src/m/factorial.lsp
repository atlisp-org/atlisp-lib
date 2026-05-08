(defun m:factorial (n)
  "求n的阶乘（斯特林公式法，近似值）"
  "real - 返回阶乘近似值"
  "(m:factorial 5) => 120.0"
  (if (<= n 0) 1.0
  (* (sqrt (* 2 pi n)) (expt (/ n (exp 1)) n))))