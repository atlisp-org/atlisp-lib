(defun curve:point-secondangle (obj pt / param)
  "曲线一点的法线方向的角度"
  (setq param (vlax-curve-getparamatpoint obj pt))
  (angle (quote (0 0 0))
    (vlax-curve-getsecondderiv obj param)))
