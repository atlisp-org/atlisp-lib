(defun m:factorial (n)
    "求n 的阶乘"
    "整数"
    (if (< n 2)
        1
        (* n (m:factorial (1- n)))))
