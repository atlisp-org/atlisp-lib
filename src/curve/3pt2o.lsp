(defun curve:3pt2o(pt1 pt2 pt3 / ptm1 ptm2)
  "三点求圆心，任意两点的垂线的交点即圆心。"
  "number"
  "(curve:3pt2o (getpoint)(getpoint)(getpoint))"
  (inters
   (setq ptm1 (point:mid pt1 pt2))
   (polar ptm1
	  (m:fix-angle
	   (+ (* 0.5  pi)
	      (angle pt1 pt2)))
	  1000)
   (setq ptm2 (point:mid pt1 pt3))
   (polar ptm2
	  (m:fix-angle
	   (+ (* 0.5  pi)
	      (angle pt1 pt3)))
	  1000)
   nil))
	   
