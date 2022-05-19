(defun curve:param-firstangle (obj param / pt)
  "曲线参数param处的切线方向的角度"
  (setq pt (vlax-curve-getpointatparam obj param))
  (angle (quote (0 0 0))
    (vlax-curve-getfirstderiv obj param)))
