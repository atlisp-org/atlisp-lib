(defun list:assoclist-values (lst)
    "返回关联表的value值表"
    (mapcar (quote cdr)
        lst))
