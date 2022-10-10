(defun m:asin (x)
    "arcsin,arsin,计算反正弦值"
    (if (<= -1.0 x 1.0)
        (atan x (sqrt (- 1.0 (* x x))))))
