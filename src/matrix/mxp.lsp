(defun matrix:mxp (m p)
  "对点的坐标进行矩阵变换"
  "变换后的3D点坐标"
  (if (= 2 (length p))
      (setq p (append p (list 0))))
  (reverse (cdr (reverse (matrix:mxv m (append p (list 1.0)))))))
