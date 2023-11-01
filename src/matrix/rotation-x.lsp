(defun matrix:rotation-x (rx / cr sr)
  "构造x轴旋转矩阵"
  (list
   (list 1 0 0 0)
   (list 0 (setq cr (cos rx)) (setq sr(sin rx)) 0)
   (list 0 (- sr) cr 0)
   (list 0  0  0 1)
   ))
