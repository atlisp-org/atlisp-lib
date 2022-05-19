(defun m:cosh (x)
    "计算双曲余弦值"
    (/ (+ (exp x)
            (exp (- x)))
        2.0))
