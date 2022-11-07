(defun curve:midpoint (curve)
  "求曲线中点"
  "中点坐标"
  "(curve:midpoint (car (entsel)))"
  (if (= 'ename (type curve))
      (setq curve (e2o curve)))
  (vlax-curve-getpointatdist curve (/ (curve:length curve)
      2)))
