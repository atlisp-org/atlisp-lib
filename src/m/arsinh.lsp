(defun m:arsinh (x)
    "arcsinh,asinh,计算反双曲正弦值"
    (log (+ x (sqrt (1+ (* x x))))))
