(defun curve:o2bulge (pt1 pt2 o / l)
  "求两点 pt1 pt2 和 圆心 O 表示的逆时针弧的凸度。"
  (/ (if (> (geometry:turn-right-p pt1 o pt2)
            0)
      (+ (distance o pt1)
        (distance o (point:mid pt1 pt2)))
      (- (distance o pt1)
        (distance o (point:mid pt1 pt2))))
    (* 0.5 (distance pt1 pt2))))
