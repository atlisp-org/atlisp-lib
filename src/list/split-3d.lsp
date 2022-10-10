(defun list:split-3d (lst)
    "列表按顺序切分为3元素表组成的表\n不足部分用nil表示"
    "((x x x )(x x x)...)"
    "(list:split-3d '(1 2 3 4))"
    (if lst (cons (list (car lst)
                (cadr lst)
                (caddr lst))
            (list:split-3d (cdddr lst)))))
