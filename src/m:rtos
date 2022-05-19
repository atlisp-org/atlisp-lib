(defun m:rtos (real prec / dimzin result)
    "保留小数位数(四舍五入)"
    "四舍五入后的字符串"
    "(m:rtos 1.8000 3)"
    (setq dimzin (getvar (quote dimzin)))
    (setvar (quote dimzin)
        0)
    (setq result (vl-catch-all-apply (quote rtos)
            (list real 2 prec)))
    (setvar (quote dimzin)
        dimzin)
    (if (not (vl-catch-all-error-p result))
        result))
