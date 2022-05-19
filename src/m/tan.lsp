(defun m:tan (x)
    "计算正切值"
    (if (not (equal 0.0 (cos x)
                1.0e-010))
        (/ (sin x)
            (cos x))))
