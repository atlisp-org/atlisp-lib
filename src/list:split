(defun list:split (lst x / lst2)
    "列表切分,不足部分省略，此函数返回结果相对list:split-2d、list:split-3d两个特殊函数比较合理"
    (foreach n lst (if (and lst2 (/= x (length (car lst2))))
            (setq lst2 (cons (append (car lst2)
                        (list n))
                    (cdr lst2)))
            (setq lst2 (cons (list n)
                    lst2))))
    (reverse lst2))
