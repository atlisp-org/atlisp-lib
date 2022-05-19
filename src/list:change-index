(defun list:change-index (lst m n / t1 t2)
    "交换列表的m和n项，索引从0开始"
    (setq t1 (nth m lst)
        t2 (nth n lst))
    (list:replace-index (list:replace-index lst m t2)
        n t1))
