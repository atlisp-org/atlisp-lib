(defun list:assoclist-appenditem (lst value)
    "添加关联表的元素,替换. 同 assoc"
    (if (assoc (car value)
            lst)
        (setq lst (list:assoclist-remove lst (car value))))
    (cons value lst))
