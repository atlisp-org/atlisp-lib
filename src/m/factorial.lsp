(defun m:factorial (n)
    "求n 的阶乘。斯特林公式法。\n"
    (* (sqrt (* 2 pi n))
        (expt (/ n (exp 1))
            n)))
