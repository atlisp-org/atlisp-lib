(defun matrix:transform (translation scale rotation pt)
  "坐标变换公式A'=TSRA"
  (matrix:mxp translation
	      (matrix:mxp scale
			 (matrix:mxp rotation
				     pt))))
  
