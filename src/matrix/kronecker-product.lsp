(defun matrix:kronecker-product (m1 m2)
  "克罗内克积是两个任意大小的矩阵间的运算，符号记作(x) 。克罗内克积也被称为直积或张量积.以德国数学家利奥波德·克罗内克命名"
  "matrix"
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
  
