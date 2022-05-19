(defun curve:subsegment-points (curve n)
  "多段线第n子段的端点坐标"
  (list (vlax-curve-getpointatparam curve (fix n))
    (vlax-curve-getpointatparam curve (1+ (fix n)))))
