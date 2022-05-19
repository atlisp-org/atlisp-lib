(defun list:ltrim (lst m)
    "删除表头前m项"
    (cond ((or (zerop m)
                (minusp m)
                (>= m (length lst)))
            lst)
        (t (repeat m (setq lst (cdr lst))))))
