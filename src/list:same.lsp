(defun list:same (lst)
    "查找表中重复元素"
    (if lst (if (member (car lst)
                (cdr lst))
            (cons (car lst)
                (list:same (vl-remove (car lst)
                        (cdr lst))))
            (list:same (vl-remove (car lst)
                    (cdr lst))))))
