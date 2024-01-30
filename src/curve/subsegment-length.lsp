(defun curve:subsegment-length (curve pt1 pt2)
  "多段线子段长度，当曲线闭合且 pt2 与起点相同时,pt2按终点考虑"
  (if (p:enamep curve)
      (setq curve (e2o curve)))
  (cond
    ((equal 0 (distance (vlax-curve-getendpoint curve) pt2) 1e-10)
     (-(vla-get-length curve)
       (vlax-curve-getdistatpoint curve pt1)))
    (t
     (cond
       ((and (listp pt1)
	     (listp pt2))
	(abs (- (vlax-curve-getdistatpoint curve pt1)
		(vlax-curve-getdistatpoint curve pt2))))
       (t (abs (- (vlax-curve-getdistatparam curve pt1)
		  (vlax-curve-getdistatparam curve pt2))))))))
