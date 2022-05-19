(defun list:insert-nth (value n lst)
    "插入元素va到lst表的第n位"
    (if (= n 0)
        (cons value lst)
        (cons (car lst)
            (list:insert-nth value (1- n)
                (cdr lst)))))
