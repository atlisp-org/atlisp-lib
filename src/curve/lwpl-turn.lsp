(defun curve:lwpl-turn (p1 p2 p3 / a)
  "求折线相邻两段 p1p2 与 p2p3 的转角弧度，值域为开区间 -pi 到 pi。接近 0 表示接近直线，即两段夹角接近 180 度。"
  "number - 转角弧度"
  (setq a (-
            (angle p2 p3)
            (angle p1 p2)))
  (cond
    ((> a pi)
     (- a pi pi))
    ((<= a (- pi))
     (+ a pi pi))
    (t a)))
