(defun geometry:segment-mid (segment)
  "求线段的中点坐标"
  "三维坐标值"
  (list (* 0.5 (+ (car (car segment))
        (car (cadr segment))))
    (* 0.5 (+ (cadr (car segment))
        (cadr (cadr segment))))
    (if (caddr (car segment))
      (* 0.5 (+ (caddr (car segment))
          (caddr (cadr segment))))
      0)))
