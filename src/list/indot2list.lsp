(defun list:indot->list (lst / tmplist)
    "内嵌点表的表转普通表"
    (setq tmplist lst)
    (foreach i tmplist (if (dotpairp i)
            (setq lst (subst (list:dot->list i)
                    i lst))))
    lst)
