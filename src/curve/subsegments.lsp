(defun curve:subsegments (obj)
  "多段线子段数"
  (fix (vlax-curve-getendparam obj)))
