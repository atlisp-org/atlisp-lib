(defun curve:subsegment-picked-points (obj p)
  "多段线所点击子段的两端点列表"
  (curve:subsegment-points obj (fix (vlax-curve-getparamatpoint obj (vlax-curve-getclosestpointto obj (trans p 1 0))))))
