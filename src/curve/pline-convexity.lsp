(defun curve:pline-convexity (ent / i lst v pldata)
  "多段线凸度列表。"
  "数值列表"
  "(curve:pline-convexity (car (entsel)))"
  (cond ((and (= (quote ename)
		 (type ent))
              (= "LINE"
		 (entity:getdxf ent 0)))
	 (list 0))
	(t
	 (setq pldata (entget ent))
	 (if (= "POLYLINE"(entity:getdxf ent 0))
	     (progn
	       (setq nextent ent)
	       (setq pldata (vl-remove-if '(lambda(x)
					     (= 10 (car x)))
					  pldata))
	       (while (= "VERTEX" (entity:getdxf (setq nextent (entnext nextent)) 0))
		 (setq pldata
		       (append pldata
			       (entget nextent))))))
	 (mapcar (quote cdr)
		 (vl-remove-if-not (quote (lambda (x)
					    (= 42 (car x))))
				   pldata)))))
