(defun matrix:transformation (translation scale rotation pt)
  "使用坐标变换公式A'=TSRA进行坐标变换"
  (matrix:mxp translation
	      (matrx:mxp scale
			 (matrx:mxp rotation
				    pt))))
  
