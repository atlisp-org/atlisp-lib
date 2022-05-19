(defun matrix:mxp (m p)
    "点到矩阵的变换"
    (reverse (cdr (reverse (matrix:mxv m (append p (quote (1.0))))))))
