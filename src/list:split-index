(defun list:split-index (lst index / result tmp)
    "根据索引分割列表，索引从0开始"
    "索引前后元素组成的表，其中索引所指向的元素位于第二个子表的表头"
    "(list:split-index '(1 2 3 4)
        2)"
    (setq tmp lst)
    (repeat index (setq result (cons (car tmp)
                result))
        (setq tmp (cdr tmp)))
    (list (reverse result)
        (list:ltrim lst index)))
