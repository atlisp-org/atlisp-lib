(defun matrix:rotation (rx ry rz)
  "构造三维旋转矩阵，rx/ry/rz分别对应三个坐标轴的转角"
  (matrix:mxm (matrix:rotation-x rx)
	      (matrx:mxm (matrix:rotation-y ry)
			 (matrix:rotation-z rz))))
 
