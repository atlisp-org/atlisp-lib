(defun list:replace-index (oldlst index item)
    "按索引替换列表"
    "替换后的列表"
    "(list:reeplace-index '(0 1 2 3)
        1 5)"
    (if (zerop index)
        (append (list item)
            (cdr oldlst))
        (cons (car oldlst)
            (list:replace-index (cdr oldlst)
                (1- index)
                item))))
