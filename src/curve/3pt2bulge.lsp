(defun curve:3pt2bulge(pt1 pt2 pt3 / ptm1 ptm2)
  "三点求凸度，任意两点的垂线的交点即圆心。"
  "number"
  "(curve:3pt2bulge (getpoint)(getpoint)(getpoint))"
  (* 
   (if (> (geometry:turn-right-p pt1 pt2 pt3) 0)
       1 -1)
   (curve:o2bulge
    pt1 pt3
    (curve:3pt2o pt1 pt2 pt3)))
  )
	   
