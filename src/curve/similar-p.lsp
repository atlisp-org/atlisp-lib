(defun curve:similar-p (curve1 curve2 / similarity o1 o2)
  "判定两曲线是否相似,curve1,curve2 曲线图元,默认相似度:95%"
  "bool"
  "(curve:similar-p (car(entsel))(car(entsel)))"
  (if (@::get-config 'curve:similarity)
      (setq similarity (@::get-config 'curve:similarity))
      (setq similarity 0.05))
  (setq o1 (e2o curve1)
	o2 (e2o curve2))
  (and
   ;; 长度
   (cond
     ((equal (vla-get-area o1)(vla-get-area o2) 1e-6)
      t)
     ((/= (vla-get-length o2) 0)
      (equal (/ (float (vla-get-length o1))
		(float (vla-get-length o2)))
	     1 similarity))
     )
   ;; 面积
   (cond
     ((equal (vla-get-area o1)(vla-get-area o2) 1e-6)
      t)
     ((/= (vla-get-area o2) 0)
      (equal (/ (float (vla-get-area o1))
		(float (vla-get-area o2)))
	     1 similarity))
     (t nil)
     )
   ))
      
      
  
