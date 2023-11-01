(defun matrix:translation (x y z)
  "构造平移转换矩阵"
  (list
   (list 1 0 0 x)
   (list 0 1 0 y)
   (list 0 0 1 z)
   (list 0 0 0 1)
   ))
