(defun m:acos (x)
    "计算反余弦值"
    (if (<= -1.0 x 1.0)
        (atan (sqrt (- 1.0 (* x x)))
            x)))
