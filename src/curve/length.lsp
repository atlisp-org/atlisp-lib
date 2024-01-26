(defun curve:length (curve)
  "参数curve:曲线，直线、圆弧、圆、多段线、优化多段线、样条曲线,多线（控制点）等图元"
  "曲线的长度"
  "(curve:Length (car (entsel)))"
  (if (= 'ename (type curve))
      (setq curve (e2o curve)))
  (cond
   ((string-equal "AcDbMline" (vla-get-objectname curve))
    (setq pts (curve:get-points curve))
    (setq len 0)
    (while (>= (length pts) 2)
      (setq len (+ len (distance (car pts)(cadr pts))))
      (setq pts (cdr pts)))
    len
    )
   (t (vlax-curve-getdistatparam curve (vlax-curve-getendparam curve)))))
