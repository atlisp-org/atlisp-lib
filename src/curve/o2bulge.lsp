(defun curve:o2bulge (pt1 pt2 o / l)
  "求圆心 O 和两点 pt1 pt2 表示的弧的凸度。目前暂时没有考虑方向，及正负。"
  (/ (if (> (geometry:turn-right-p pt1 o pt2)
        0)
      (+ (distance o pt1)
        (distance o (point:mid pt1 pt2)))
      (- (distance o pt1)
        (distance o (point:mid pt1 pt2))))
    (* 0.5 (distance pt1 pt2))))
