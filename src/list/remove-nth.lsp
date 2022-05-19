(defun list:remove-nth (n lst)
    "删除lst表的第n个元素"
    (if (= n 0)
        (cdr lst)
        (cons (car lst)
            (list:remove-nth (1- n)
                (cdr lst)))))
