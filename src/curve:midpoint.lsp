(defun curve:midpoint (curve)
  "求曲线中点"
  "中点坐标"
  "(curve:midpoint (car (entsel)))"
  (vlax-curve-getpointatdist curve (/ (curve:length curve)
      2)))
