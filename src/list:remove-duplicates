(defun list:remove-duplicates (lst)
    "删除列表中重复的原子。"
    (if lst (cons (car lst)
            (list:remove-duplicates (vl-remove (car lst)
                    lst)))))
