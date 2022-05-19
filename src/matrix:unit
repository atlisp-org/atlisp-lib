(defun matrix:unit (v)
    "单位向量"
    ((lambda (n)
            (if (equal 0.0 n 1.0e-014)
                nil (matrix:vxs v (/ 1.0 n))))
        (matrix:norm v)))
