(defun curve:rectangle-center (en / pl)
  "矩形中点坐标"
  (setq pl (curve:pline-2dpoints en))
  (mapcar (quote (lambda (x y)
        (/ (+ x y)
          2.0)))
    (car pl)
    (caddr pl)))
