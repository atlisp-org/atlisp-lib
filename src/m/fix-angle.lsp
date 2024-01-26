(defun m:fix-angle (angle0)
  "使弧度值在 0-2pi 之间。"
  (while (< angle0 0)
    (setq angle0 (+ pi pi angle0)))
  (while (>= angle0 (* pi 2))
    (setq angle0 (- angle0 (* pi 2))))
  angle0)
