(defun m:rand (/ a c m $xn)
  "生成伪随机数"
  "0~1之间的实数"
  (setq m 4.29497e+09 a 1.66453e+06 c 1.0139e+09 $xn (rem (+ c (* a (cond ($xn)
            ((getvar (quote date))))))
      m))
  (/ $xn m))
