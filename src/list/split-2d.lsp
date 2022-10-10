(defun list:split-2d (lst)
    "列表按顺序切分为2元素表组成的表\n不足部分用nil表示"
    (if lst (cons (list (car lst)
                (cadr lst))
            (list:split-2d (cddr lst)))))
