(defun point:rec-2pt->4pt (pt1 pt2)
    "根据矩形2点计算矩形4点"
    "矩形的四点坐标"
    (mapcar (quote (lambda (x)
                (mapcar (quote apply)
                    x (mapcar (quote list)
                        pt1 pt2))))
        (quote ((min min)
                (max min)
                (max max)
                (min max)))))
