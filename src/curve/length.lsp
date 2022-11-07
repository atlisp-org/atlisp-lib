(defun curve:length (curve)
  "参数curve:曲线，直线、圆弧、圆、多段线、优化多段线、样条曲线等图元"
  "曲线的长度"
  "(curve:Length (car (entsel)))"
  (if (= 'ename (type curve))
      (setq curve (e2o curve)))
  (vlax-curve-getdistatparam curve (vlax-curve-getendparam curve)))
