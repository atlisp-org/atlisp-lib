(defun list:trim (lst m n)
    "删除表头前m项，表尾前n项"
    (list:ltrim (list:rtrim lst n)
        m))
