(defun block:bcs2wcs (pt pt-base pt-ins ang scale)
  "将块定义内的坐标转为块引用中的实际的世界坐标"
  "坐标值"
  (setq pt (mapcar '- pt pt-base))
  ;; 矢量运算
  (m:coordinate pt-ins
		(m:coordinate-scale
		 (m:coordinate-rotate pt ang) scale)))
