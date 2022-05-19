(defun m:calheight (pt1 pt2 podu)
    "目标点的高程"
    (subst (+ (caddr pt1)
            (* podu (distance (geometry:point-3d->2d pt1)
                    (geometry:point-3d->2d pt2))))
        (caddr pt2)
        pt2))
