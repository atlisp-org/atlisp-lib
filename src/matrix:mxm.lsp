(defun matrix:mxm (m q)
    "矩阵相乘"
    (mapcar (function (lambda (r)
                (matrix:mxv (matrix:trp q)
                    r)))
        m))
