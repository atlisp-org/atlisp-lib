(defun entity:make-circle (pts-cen num-rad)
  "创建圆.如果圆心是点的列表或半径是数值的列表，可以同时创建多个圆"
  "Ename"
  "(entity:make-circle (list (getpoint)(getpoint)) '(3 5))"
  (cond
   ((and (= 'point (type-of pts-cen))
	 (numberp num-rad))
    (entmakex (list (quote (0 . "circle"))
		    (quote (100 . "AcDbEntity"))
		    (quote (100 . "AcDbCircle"))
		    (cons 10 pts-cen)
		    (cons 40 num-rad))))
   ;; 多圆心
   ((and (listp pts-cen)
	 (apply 'and (mapcar (function (lambda (x)
					 (= 'point (type-of x))))
			     pts-cen)))
    (foreach pt pts-cen
	     (entity:make-circle pt num-rad)))
   ;; 多半径
   ((and (listp num-rad)
	 (apply 'and (mapcar 'numberp
			     num-rad)))
    (foreach rad num-rad
	     (entity:make-circle pts-cen rad)))
   (t (@:log "WARR" "参数错误,无创建圆"))
   ))
   
