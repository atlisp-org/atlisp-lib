(defun matrix:hadamard-product (m1 m2)
  "mxn矩阵与mxn 矩阵的Hadamard积记作A*B。其元素定义为两个矩阵对应元素的乘积的m×n矩阵"
  (mapcar
   '(lambda(x y)
     (mapcar '* x y))
   m1 m2))
