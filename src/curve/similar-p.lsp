(defun curve:similar-p (curve1 curve2 / similarity o1 o2 nolength)
  "判定两曲线是否相似,curve1,curve2 曲线图元,默认相似度:95%"
  "bool"
  "(curve:similar-p (car(entsel))(car(entsel)))"
  (setq nolength '("CIRCLE""ARC""SPLINE""ELLIPSE""REGION"))
  (if (@::get-config 'curve:similarity)
      (setq similarity (- 1 (@::get-config 'curve:similarity)))
      (setq similarity 0.05))
  (setq o1 (e2o curve1)
	o2 (e2o curve2))
  (and
   ;; 长度
   (if (or
	(member (entity:getdxf curve1 0) nolength)
	(member (entity:getdxf curve2 0) nolength))
       t
       (cond
	 ((equal (vla-get-length o1)(vla-get-length o2) 1e-6)
	  t)
	 ((/= (vla-get-length o2) 0)
	  (equal (/ (float (vla-get-length o1))
		    (float (vla-get-length o2)))
		 1 similarity))
	 ))
   ;; 面积
   (if (and
	(/= "LINE" (entity:getdxf curve1 0))
	(/= "LINE" (entity:getdxf curve2 0)))
       (cond
	 ((equal (vla-get-area o1)(vla-get-area o2) 1e-6)
	  t)
	 ((/= (vla-get-area o2) 0)
	  (equal (/ (float (vla-get-area o1))
		    (float (vla-get-area o2)))
		 1 similarity))
	 (t nil))
       (if(= (entity:getdxf curve1 0)(entity:getdxf curve2 0))
	  t)
       )
   ))
      
      
  
