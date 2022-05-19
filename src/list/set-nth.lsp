(defun list:set-nth (value n lst)
    "更新lst表的第n个元素为value"
    (if (= n 0)
        (cons value (cdr lst))
        (cons (car lst)
            (list:set-nth value (1- n)
                (cdr lst)))))
