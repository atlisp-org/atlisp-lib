(defun m:coordinate (p-base point2d / x y z)
    "坐标向量变换"
    (setq x (car point2d))
    (setq y (cadr point2d))
    (list (+ (car p-base)
            x)
        (+ (cadr p-base)
            y)
        (last p-base)))
