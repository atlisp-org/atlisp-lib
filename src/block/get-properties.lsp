(defun block:get-properties (blkref / oblkref)
  "获取动态块的动态特性和值的点对表"
  (if (= (quote ename) (type blkref))
      (mapcar (function(lambda(prop)
		(cons 
		 (vla-get-propertyname prop)
		 (vla:get-value (vla-get-value prop))
		 )))
	      (vlax-invoke (e2o blkref) (quote getdynamicblockproperties))
	      )))

