(defun list:sublist (lst idx len / rtn)
    "获取子列表,leemac"
    "子列表"
    (setq len (if len (min len (- (length lst)
                    idx))
            (- (length lst)
                idx))
        idx (+ idx len))
    (repeat len (setq rtn (cons (nth (setq idx (1- idx))
                    lst)
                rtn))))
