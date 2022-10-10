(defun list:assoclist-appenditem (lst value)
    "添加或替换关联表的元素\n 同 assoc"
    (if (assoc (car value)
            lst)
        (setq lst (list:assoclist-remove lst (car value))))
    (cons value lst))
