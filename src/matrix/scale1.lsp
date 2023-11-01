(defun  matrix:scale1 (s)
  "构造3轴缩放矩阵，s代表三轴的统一缩放比例"
  (list
   (list s 0 0 0)
   (list 0 s 0 0)
   (list 0 0 s 0)
   (list 0 0 0 1)
   ))
