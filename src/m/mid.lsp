(defun m:mid (x y / a b)
    "计算中点"
    (mapcar (quote (lambda (a b)
                (* (+ a b)
                    0.5)))
        x y))
