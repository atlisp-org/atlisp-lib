(defun matrix:hadamard-product (m1 m2)
  "mxn矩阵与mxn 矩阵的Hadamard积记作A*B。其元素定义为两个矩阵对应元素的乘积的m×n矩阵"
  "matrix"
  "(matrix:hadamard-product '((1 3 2)(1 0 0)(1 2 2)) '((0 0 2)(7 5 0)(2 1 1)));;=> ((0 0 4) (7 0 0) (2 2 2))"
  (mapcar
   '(lambda(x y)
     (mapcar '* x y))
   m1 m2))
