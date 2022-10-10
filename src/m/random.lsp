(defun m:random (n / a c m)
    "依日期变量生成伪随机数"
    (setq m 4.29497e+009 a 1.66453e+006 c 1.0139e+009 $xn (rem (+ c (* a (cond ($xn)
                        ((getvar (quote date))))))
            m))
    (* n (/ $xn m)))
