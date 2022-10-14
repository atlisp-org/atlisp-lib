(defun point:div ( pt1 pt2 n / pt)
  "将 pt1 pt2 之间等分 n 份后每个点的坐标(不含pt1 pt2)"
  "点坐标表"
  "(point:div (getpoint(@:speak\"起点\")) (getpoint(@:speak\"终点\")) 5)"
  (if (> n 1)
      (cons (setq pt (polar pt1
			(angle pt1 pt2)
			(/ (distance pt1 pt2)
			   (float n))))
	      (div pt pt2 (1- n)))))
