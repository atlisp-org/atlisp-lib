(defun curve:param-secondangle (obj param / pt)
  "曲线参数param处的法线方向的角度"
  (setq pt (vlax-curve-getpointatparam obj param))
  (angle (quote (0 0 0))
    (vlax-curve-getsecondderiv obj param)))
