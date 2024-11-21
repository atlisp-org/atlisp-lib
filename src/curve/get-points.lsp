(defun curve:get-points (ent)
  "曲线控制点及端点列表，返回点坐标。"
  "点坐标列表"
  "(curve:get-points (car (entsel)))"
  (if (p:vlap ent)
      (setq ent (o2e ent)))
  (if (= (quote ename) (type ent))
      (cond
       ((wcmatch (entity:getdxf ent 0) "*POLYLINE,LINE,MLINE,CIRCLE,SPLINE,REGION")
	(mapcar 'cdr 
		(vl-remove-if-not '(lambda(x)
				    (or
				     (= 10 (car x))
				     (= 11 (car x))))
				  (entget ent))))
       ((wcmatch (entity:getdxf ent 0) "ELLIPSE")
	(mapcar 'cdr 
		(vl-remove-if-not '(lambda(x)
				     (= 10 (car x)))
				  (entget ent)))
	)
       ((wcmatch (entity:getdxf ent 0) "ARC")
	(list
	 (polar (entity:getdxf ent  10)(entity:getdxf ent 50)(entity:getdxf ent 40))
	 (polar (entity:getdxf ent  10)(entity:getdxf ent 51)(entity:getdxf ent 40))))
       )))
