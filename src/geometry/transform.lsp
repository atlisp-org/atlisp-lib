(defun geometry:transform (translation scale rotation pt)
  "坐标变换公式A'=TSRA"
  (matrix:mxp translation
	      (matrx:mxp scale
			 (matrx:mxp rotation
				    pt))))
  
