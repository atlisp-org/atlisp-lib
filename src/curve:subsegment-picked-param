(defun curve:subsegment-picked-param (obj p / pp)
  "多段线所点击子段参数"
  (setq pp (vlax-curve-getclosestpointto obj (trans p 1 0)))
  (fix (vlax-curve-getparamatpoint obj pp)))
