(defun list:rtrim (lst m)
    "删除表尾m项"
    (reverse (list:ltrim (reverse lst)
            m)))
