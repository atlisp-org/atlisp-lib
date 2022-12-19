(defun entity:make-lwpline-bold (plist convexity elevation closed bold / lst-dxf i)
  "生成固定宽度的二维多段线.LWPOLYLINE
参数:
   plist:端点坐标点表，如：((x1 y1 z1)(x2 y2 z2)(x2 y2 z2))或((x1 y1)(x2 y2)(x2 y2))
   convexity:各点与下一点的凸度(个数同坐标点表)，可为nil
   elevation:标高
   closed:是否闭合，1:闭合，0：不闭合"
  "返回值: 生成的多段线的图元名"
  (setq lst-dxf
	(list (quote (0 . "LWPOLYLINE"))
	      (quote (100 . "AcDbEntity"))
	      (quote (62 . 1))
	      (quote (370 . 30))
	      (quote (100 . "AcDbPolyline"))
	      (cons 90 (length plist))
	      (if (= closed 1)
		  (quote (70 . 1))
		(quote (70 . 0)))
	      (cons 43 bold)
	      (quote (38 . 0.0))
	      (quote (39 . 0.0))))
  (setq i 0)
  (foreach
   x plist
   (setq lst-dxf
	 (append lst-dxf
		 (list (cons 10 x)
		       (cons 40 bold)
		       (cons 41 bold)
		       (cons 42 (if (null convexity)
				    0 (nth i convexity)))
		       (cons 91 0))))
   (setq i (1+ i)))
  (entmake lst-dxf)
  (entlast))
