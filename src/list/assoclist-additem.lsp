(defun list:assoclist-additem (lst value)
    "添加关联表的元素.无替换"
    "关联表，无相同的key"
    "(list:assoclist-additem '((1 11)
            (2 22)
            (3 33)
            (4 44))
        '(2 33))"
    (if (assoc (car value)
            lst)
        lst (cons value lst)))
