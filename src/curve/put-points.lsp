(defun curve:put-points (ent pts / dxfent)
  "更改曲线控制点及端点列表。pts为新的点位置,nil为不替换。"
  "ent"
  "(curve:put-points (car (entsel)) '((0 0 0)))"
  (if (p:vlap ent)
      (setq ent (o2e ent)))
  (if (= (quote ename) (type ent))
      (cond
	((wcmatch (entity:getdxf ent 0) "*POLYLINE,LINE,MLINE,CIRCLE,SPLINE,REGION,ELLIPSE,ARC")
	 (setq dxfent (entget ent))
	 (mapcar '(lambda(dxf1011 pt)
		   (if pt
		       (setq dxfent
			     (subst
			      (cons (car dxf1011)
				    pt)
			      dxf1011
			      dxfent))))
		 (vl-remove-if-not '(lambda(x) ;; 原有点表
				     (or
				      (= 10 (car x))
				      (= 11 (car x))))
				   (entget ent))
		 pts)
	 (entmod dxfent)
	 (entupd ent)
	 ))))
