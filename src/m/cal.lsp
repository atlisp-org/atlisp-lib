(defun m:cal (lst1 lst2 str)
    "根据给定表达式计算结果"
    (if (not(or
	     (list:exist (arx) "geomcal.arx")
	     (list:exist (arx) "geomcal.crx")
	     ))
        (arxload "geomcal"
            "\n加载geomcal失败！"))
    (mapcar (quote set)
        lst1 lst2)
    (if (vl-every (quote (lambda (x)
                    (= (quote real)
                        (type x))))
            lst2)
        (cal (strcat "1.0*("
                    str ")"))
        (cal str)))
