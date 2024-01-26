(defun curve:get-angles (lwpl / pts  angles)
  "取得闭合多段线各点相邻边的夹角角度值"
  "list"
  (setq pts (curve:get-points lwpl))
  (setq pts (append (list (last pts)) pts (list (car pts))))
  (setq angles '())
  (while (> (length pts) 2)
    (setq angles
	  (cons
	   (m:fix-angle
	    (-(angle  (cadr pts)(caddr pts))
	      (angle (car pts)(cadr pts))))
	   angles))
    (setq pts (cdr pts))
    )
  (reverse angles)
  )

