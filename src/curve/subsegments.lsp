(defun curve:subsegments (obj)
  "多段线子段数"
  (if (vlax-curve-isclosed obj)
    (fix (1- (vlax-curve-getendparam obj)))
    (fix (vlax-curve-getendparam obj))))
