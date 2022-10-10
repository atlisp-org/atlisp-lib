(defun m:arcosh (x)
    "arccosh,aconsh,计算反双曲余弦值"
    (if (<= 1.0 x)
        (log (+ x (sqrt (1- (* x x)))))))
