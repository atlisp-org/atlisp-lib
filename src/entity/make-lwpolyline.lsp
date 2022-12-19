(defun entity:make-lwpolyline (plist convexity linewidth closed elevation / lst-dxf i)
  "生成二维多段线.LWPOLYLINE
参数:
  plist:端点坐标点表，如：((x1 y1 z1) (x2 y2 z2) (x2 y2 z2))或((x1 y1) (x2 y2) (x2 y2))
  convexity:各点与下一点的凸度(个数同坐标点表)，可为nil
  linewidth : 宽度,当为数值时，为全局宽度，当为表时，为各段宽度。
  closed:是否闭合，1:闭合，0：不闭合
  elevation:标高"
  "返回值: 生成多段线的图元名"
  "(entity:make-lwpolyline '((0 0) (2 2)) '(0.3 0) '((0.5 1.0)(0 0)) 0 nil)"
  (setq lst-dxf (list (quote (0 . "LWPOLYLINE"))
		      (quote (100 . "AcDbEntity"))
		      (quote (62 . 1))
		      (quote (370 . 30))
		      (quote (100 . "AcDbPolyline"))
		      (cons 90 (length plist))
		      (if (= closed 1)
			  (quote (70 . 1))
			(quote (70 . 0)))
		      (if (numberp linewidth)
			  (cons 43 linewidth))
		      (quote (38 . 0.0))
		      (quote (39 . 0.0))))
  (setq i 0)
  (foreach
   x plist
   (setq lst-dxf
	 (append
	  lst-dxf
	  (list (cons 10 x)
		(if (listp linewidth)
		    (cond
		     ((numberp (nth i linewidth))
		      (cons 40 (nth i linewidth)))
		     ((and (listp (nth i linewidth))
			   (numberp (car (nth i linewidth))))
		      (cons 40 (car (nth i linewidth))))
		     (t (cons 40 0)))
		  (cons 40 linewidth))
		(if (listp linewidth)
		    (cond
		     ((numberp (nth i linewidth))
		      (cons 41 (nth i linewidth)))
		     ((and (listp (nth i linewidth))
			   (numberp (cadr (nth i linewidth))))
		      (cons 41 (cadr (nth i linewidth))))
		     (t (cons 41 0)))
		  (cons 41 linewidth))
		(cons 42 (if (null convexity)
			     0 (nth i convexity)))
		(cons 91 0))))
   (setq i (1+ i)))
  (entmake (vl-remove nil lst-dxf))
  (entlast))
