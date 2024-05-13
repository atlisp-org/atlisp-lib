(defun matrix:kronecker-product (m1 m2)
  "克罗内克积也称张量积、直积是两个任意大小的矩阵间的运算，符号记作(x) 。以德国数学家利奥波德·克罗内克命名"
  "matrix"
  "(matrix:kronecker-product '((1 2)(3 1)(5 3)) '((0 3)(2 1))) => ((0 3 0 6) (2 1 4 2) (0 9 0 3) (6 3 2 1) (0 15 0 9) (10 5 6 3))"
  (apply
   'append
   (mapcar
    '(lambda (a)
      (mapcar
       '(lambda(x) (apply 'append x))
       (matrix:trp a)))
    (mapcar
     '(lambda (m1%)
       (mapcar
	'(lambda(m1%%)
	  (mapcar
	   '(lambda(m2%)
	     (mapcar
	      '(lambda(m2%%)
		(* m1%% m2%%))
	      m2%))
	   m2)
	  )
	m1%)
       )
     m1))))

  
