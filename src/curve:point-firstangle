(defun curve:point-firstangle (obj pt / param)
  "曲线一点的切线方向的角度"
  (setq param (vlax-curve-getparamatpoint obj pt))
  (angle (quote (0 0 0))
    (vlax-curve-getfirstderiv obj param)))
