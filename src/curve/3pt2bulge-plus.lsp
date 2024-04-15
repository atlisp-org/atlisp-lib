(defun curve:3pt2bulge-plus (pt1 pt2 pt3)
  "pt2是否在圆弧上的三点求凸度，任意两点的垂线的交点即圆心。"
  "number"
  "(curve:3pt2bulge-plus (getpoint)(getpoint)(getpoint))"
  (if (curve:pt-in-arc-p pt2 pt1 pt3 (curve:3pt2bulge pt1 pt2 pt3))
      (curve:3pt2bulge pt1 pt2 pt3)
      (curve:3pt2bulge-clockwise pt1 pt2 pt3)
      )
  )
