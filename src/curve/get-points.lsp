(defun curve:get-points (ent)
  "曲线控制点及端点列表，返回点坐标。"
  "点坐标列表"
  "(curve:get-points (car (entsel)))"
  (if (= (quote ename) (type ent))
      (cond
       ((wcmatch (entity:getdxf ent 0) "*POLYLINE,CIRCLE,SPLINE,REGION")
	(mapcar 'cdr 
		(vl-remove-if-not '(lambda(x)
				     (or
				      (= 10 (car x))
				      (= 11 (car x))))
				  (entget ent))))
       ((wcmatch (entity:getdxf ent 0) "ELLIPSE,ARC")
	(mapcar 'cdr 
		(vl-remove-if-not '(lambda(x)
				     (= 10 (car x)))
				  (entget ent)))
	))))
