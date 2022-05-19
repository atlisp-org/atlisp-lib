(defun curve:subsegment-picked-type (curve p / pp)
  "多段线子段图元类型"
  (if (listp p)
    (progn (setq pp (vlax-curve-getclosestpointto curve (trans p 1 0)))
      (setq pp (vlax-curve-getsecondderiv curve (fix (vlax-curve-getparamatpoint curve pp)))))
    (setq pp (vlax-curve-getsecondderiv curve p)))
  (if (equal pp (quote (0.0 0.0 0.0)))
    "line"
    "arc"))
