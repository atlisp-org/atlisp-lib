(defun curve:lwpl-cocircle-bulge (first second last o / r half sag)
  "求共圆点列 first..last（圆心 o）所成圆弧的凸度，方向由点列走向决定。"
  "number - 凸度"
  (setq r (distance o first))
  (setq half (* 0.5 (distance first last)))
  (setq sag (- r (distance o (point:mid first last))))
  (if (> (geometry:turn-right-p first second o) 0)
    (/ sag half)
    (- (/ sag half))))
