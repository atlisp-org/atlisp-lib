(defun curve:ptoncurve (pt curve)
  "判断点是否在曲线上"
  "T or nil"
  "(curve:PtOnCurve (getpoint)
    (car (entsel)))"
  (equal pt (vlax-curve-getclosestpointto curve pt)
    1.0e-005))
