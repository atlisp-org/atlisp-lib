(defun m:dmm (ang)
    "根据给定弧度返回度分秒格式的表"
    (vl-remove-if (quote (lambda (x)
                (= ""
                    x)))
        (string:parse-by-lst (angtos ang 1 4)
            (quote ("d"
                    "'"
                    "\"")))))
