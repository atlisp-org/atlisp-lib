(defun curve:similar-p (curve1 curve2 / similarity)
  "判定两曲线是否相似,curve1,curve2 曲线图元,默认相似度:95%"
  "bool"
  "(curve:similar-p (car(entsel))(car(entsel)))"
  (if (@::get-config 'curve:similarity)
      (setq similarity (@::get-config 'curve:similarity))
      (setq similarity 0.05))
  (and(equal (/ (float (vla-get-length curve1)
		       (vla-get-length curve2)))
	     1 similarity)
      (equal (/ (float (vla-get-area curve1)
		       (vla-get-area curve2)))
	     1 similarity)))
      
      
  
