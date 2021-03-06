(defun m:sort-by-curve (curve lst)
    "函数说明:沿曲线排序~%返 回 值:排序后的点表"
    (vl-sort lst (function (lambda (p1 p2 / m n)
                (setq m (vlax-curve-getclosestpointto curve p1 t))
                (setq n (vlax-curve-getclosestpointto curve p2 t))
                (cond ((< (vlax-curve-getdistatpoint curve m)
                            (vlax-curve-getdistatpoint curve n)))
                    ((equal m n 1.0e-008)
                        (< (distance p1 m)
                            (distance p2 n))))))))
