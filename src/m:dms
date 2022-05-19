(defun m:dms (degress / d x m s)
    "根据给定十进制角度返回度分秒格式的表"
    (setq d (fix degress))
    (setq x (* (- degress d)
            60))
    (setq m (fix x))
    (setq s (* (- x m)
            60))
    (list d m s))
