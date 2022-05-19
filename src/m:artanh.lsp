(defun m:artanh (x)
    "计算反双曲正切值"
    (if (< (abs x)
            1.0)
        (/ (log (/ (1+ x)
                    (- 1.0 x)))
            2.0)))
