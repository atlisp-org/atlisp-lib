(defun matrix:rotation-y (ry / cr sr)
  "构造z轴旋转矩阵"
  (list
   (list (setq cr (cos ry)) 0  (-  (setq sr(sin rz))) 0)
   (list 0  1  0 0)
   (list sr 0 cr 0)
   (list 0  0  0 1)
   ))
