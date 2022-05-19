(defun curve:subsegment-length (obj pt1 pt2)
  "多段线子段长度"
  (cond ((and (listp pt1)
        (listp pt2))
      (abs (- (vlax-curve-getdistatpoint obj pt1)
          (vlax-curve-getdistatpoint obj pt2))))
    (t (abs (- (vlax-curve-getdistatparam obj pt1)
          (vlax-curve-getdistatparam obj pt2))))))
