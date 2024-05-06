(defun block:get-attributes (blkref / lst)
  "获取块属性,返回属性名和值的点对列表。"
  (if (= (quote ename)
	 (type blkref))
      (setq blkref (e2o blkref)))
  (if (p:functionp vla-getattributes)
      ;; vlax 方式
      (if (= 'vla-object (type blkref))
	  (if (safearray-value (setq lst (vlax-variant-value (vla-getattributes blkref))))
	      (mapcar (quote (lambda (x)
			       (cons (vla-get-tagstring x)
				     (vla-get-textstring x))))
		      (vlax-safearray->list lst)))
	  nil)
      ;; dxf 方式
      (progn
	(setq att (entnext blkref))
	(while (eq "ATTRIB" (entity:getdxf att 0))
	  (setq lst (cons (cons (entity:getdxf att 2)
				(entity:getdxf att 1))
			  lst))
	  (setq att (entnext att)))
	(reverse lst))))

