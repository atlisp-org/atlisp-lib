(defun curve:o2bulge-clockwise (pt1 pt2 o / l)
  "求两点和圆心表示的顺时针弧的凸度。"
  (* -1
     (/ (if (> (geometry:turn-right-p pt1 o pt2)
               0)
	    (- (distance o pt1)
               (distance o (point:mid pt1 pt2)))
	    (+ (distance o pt1)
               (distance o (point:mid pt1 pt2))))
	(* 0.5 (distance pt1 pt2)))))
