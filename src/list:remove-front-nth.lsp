(defun list:remove-front-nth (n lst)
    "删除列表中表的前n个元素"
    (if (= n 0)
        lst (list:remove-front-nth (1- n)
            (cdr lst))))
