(defun list:move (lst n)
    "列表循环移动"
    (repeat (abs n)
        (if (minusp n)
            (setq lst (append (list (last lst))
                    (list:rtrim lst 1)))
            (setq lst (append (cdr lst)
                    (list (car lst)))))))
