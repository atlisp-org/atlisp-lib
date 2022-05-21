(defun m:power (base pow / str1)
    "增强power函数，目的为扩展expt函数,参数都为数字时，字符串，数字，列表类型，其他类型返回nil,返回expt计算的结果，base为字符串和列表时，返回自乘的结果"
    (cond ((stringp base)
            (progn (setq str1 "")
                (repeat pow (setq str1 (strcat str1 base)))))
        ((or (intp base)
                (realp base))
            (expt base pow))
        ((listp base)
            (progn (repeat pow (setq str1 (cons base str1)))))
        (t nil)))