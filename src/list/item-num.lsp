(defun list:item-num (lst / l2 tmp tmp1)
    "表中元素及数量"
    (while (setq l2 (cons (list (setq tmp1 (car lst))
                    (- (length lst)
                        (length (setq tmp (vl-remove tmp1 lst)))))
                l2)
            lst tmp))
    (reverse l2))
