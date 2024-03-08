(defun matrix:trp (m)
  "矩阵转置"
  "matrix"
  ;; 一维矩阵
  (apply 'mapcar
         (cons 'list
	       m)))
