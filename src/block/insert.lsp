(defun block:insert (blkname path pt ang scale)
  "插入块参照，参数：blkname 块名，path 块文件路径(以/结尾,不含块文件名)， pt 插入点, ang 旋转角度，scale 比例。"
  "块实体"
  "(block:insert \"aa\" \"C:/design/\" (getpoint) 0 1)"
  (if (tblsearch "block" blkname)
      ;; 使用 ax 方法可以避免属性块的同步问题
      (progn
	(if vla-insertblock
	    (vla-insertblock
	     (if (string-equal "Model" (getvar "ctab"))
		 *MS*
		 (vla-get-block(vla-get-activeLayout *DOC*))
		 )
	     (point:to-ax pt)
	     blkname scale scale scale ang)
	    (entmakex (list (quote (0 . "INSERT"))
			    (quote (100 . "AcDbEntity"))
			    (quote (100 . "AcDbBlockReference"))
			    (cons 2 blkname)
			    (cons 10 pt)
			    (cons 41 scale)
			    (cons 42 scale)
			    (cons 43 scale)
			    (cons 50 ang))))
	(entlast))
      (if (findfile (strcat path blkname ".dwg"))
	  (progn
	    (if vla-insertblock
		(vla-insertblock
		 (if (string-equal "Model" (getvar "ctab"))
		     *MS*
		     (vla-get-block(vla-get-activeLayout *DOC*))
		   )
		 (point:to-ax pt)
		 (findfile (strcat path blkname ".dwg"))
		 scale scale scale ang)
		(progn (setvar "attreq" 0)
		       (command "-insert"
				(strcat path blkname)
				pt scale scale (angtos ang 0 0))
		       (setvar "attreq" 1)))
	    (entlast)
	    ))
      ))
