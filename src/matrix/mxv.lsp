(defun matrix:mxv (m v)
  "向量的矩阵变换(向量乘矩阵)"
  (mapcar (function (lambda (r)
            (apply (quote +)
                   (mapcar (quote *)
                           r v))))
          m))
