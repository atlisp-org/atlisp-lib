(defun m:coordinate-rotate (point2d angle1 / x y)
    "坐标旋转"
    (setq x (car point2d))
    (setq y (cadr point2d))
    (list (- (* x (cos angle1))
            (* y (sin angle1)))
        (+ (* x (sin angle1))
            (* y (cos angle1)))))
