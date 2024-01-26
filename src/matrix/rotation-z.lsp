(defun matrix:rotation-z (rz / crz srz)
  "构造z轴旋转矩阵"
  (list
   (list (setq crz(cos rz))(setq srz(sin rz)) 0 0)
   (list (- srz) crz 0 0)
   (list 0 0 1 0)
   (list 0 0 0 1)
   ))
