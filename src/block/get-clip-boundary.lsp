(defun block:get-clip-boundary (blkref / ent-sf boundary-in-blk mt ms mr)
  "取剪裁块参照的边界线点WCS坐标"
  "list"
  "(block:get-clip-boundary (car(ensel)))"
  ;; ent-sf 为剪裁边界线图元
  (if (setq ent-sf (entity:getdxf (entity:getdxf (entity:getdxf blkref 360) 360)360))
      (progn
	(setq matrixs (list:split (entity:getdxf ent-sf 40)  12)) ;; 取WCS到OCS(块内)坐标变换矩阵
	;; 取边界顶点坐标
	(setq pts (entity:getdxf ent-sf 10))
	;; 处理矩形两点变四点
	(if (= 2 (length pts))
	    (setq pts  (apply 'point:rec-2pt->4pt pts)))
	;; 进行 WCS到OCS(块内)坐标变换，得到边界顶点在块内的坐标。
	(setq boundary-in-blk
	      (mapcar'(lambda(x)(matrix:mxp (list:split (car matrixs) 4) x)) pts))
	;; 构造块参照的平移变换矩阵
	(setq mt (apply 'matrix:translation (entity:getdxf blkref 10)))
	;; 构造块参照的缩放变换矩阵
	(setq ms (matrix:scale (entity:getdxf  blkref 41)
			       (entity:getdxf  blkref 42)
			       (entity:getdxf  blkref 43)))
	;; 构造块参照的旋转变换矩阵
	(setq mr (matrix:rotation-z (- (*  2 pi)(entity:getdxf blkref 50))))
	;; OCS到块参照的WCS坐标变换
	(mapcar '(lambda(x)
		  (matrix:transform
		   mt ms mr x))
		boundary-in-blk)
	)))
