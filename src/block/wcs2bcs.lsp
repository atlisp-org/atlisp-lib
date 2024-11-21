(defun block:wcs2bcs (pt pt-base pt-ins ang scale / v1)
  "将相对于块引用插入点的世界坐标转为块定义内的坐标。pt-base 基点，pt-ins 插入点，ang块转角，scalc块缩放值。"
  "坐标值"
  (setq v1 (mapcar '- pt pt-ins))
  ;; 矢量运算
  (m:coordinate (mapcar '* pt-base '(1 1 1))
		(m:coordinate-scale
		 (m:coordinate-rotate v1 (- (* 2 pi) ang))
		 (/ 1.0 scale))))
