(defun  matrix:scale (x y z)
  "构造3轴缩放矩阵，xyz分别代表三轴的缩放比例"
  (list
   (list x 0 0 0)
   (list 0 y 0 0)
   (list 0 0 z 0)
   (list 0 0 0 1)
   ))
