(defun list:insert (lst index item)
    "在列表lst 的第 index 项前插入项 item。"
    "插入项后的列表"
    "(list:insert '(0 1 2 3)
        1 5)"
    (if (zerop index)
        (cons item lst)
        (cons (car lst)
            (list:insert (cdr lst)
                (1- index)
                item))))
