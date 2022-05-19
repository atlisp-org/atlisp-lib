(defun point:in-box (pt1 pt-box1 pt-box2)
    "判断 pt1 是否在矩形内"
    "t or nil"
    (and (>= (car pt1)
            (car pt-box1))
        (<= (car pt1)
            (car pt-box2))
        (>= (cadr pt1)
            (cadr pt-box1))
        (<= (cadr pt1)
            (cadr pt-box2))))
