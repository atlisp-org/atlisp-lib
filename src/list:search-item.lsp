(defun list:search-item (lst item / i result)
    "查找表中元素的索引，索引从0开始"
    "索引值表"
    "(list:search-item '(1 2 3 4)
        3)"
    (setq i 0)
    (foreach x lst (if (= x item)
            (setq result (cons i result)))
        (setq i (1+ i)))
    (reverse result))
