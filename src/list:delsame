(defun list:delsame (lst buzz)
    "删除表中相同元素，保留第一次出现的位置"
    (if lst (cons (car lst)
            (list:delsame (vl-remove-if (quote (lambda (x)
                            (equal (car lst)
                                x buzz)))
                    (cdr lst))
                buzz))))
