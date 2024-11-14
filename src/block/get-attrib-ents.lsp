(defun block:get-attrib-ents (blkref / lst)
  "获取块参照的属性图元。"
  "图元列表"
  "(block:get-attrib-ents (car(entsel)))"
  (if (= (quote VLA-OBJECT)
	 (type blkref))
      (setq blkref (o2e blkref)))
  (if (and
       (= 'ename (type blkref))
       (eq "INSERT" (entity:getdxf blkref 0))
	   (= 1 (entity:getdxf blkref 66)))
      (progn
	(setq att (entnext blkref))
	(while (eq "ATTRIB" (entity:getdxf att 0))
	  (setq lst (cons att lst))
	  (setq att (entnext att)))
	(reverse lst))))

