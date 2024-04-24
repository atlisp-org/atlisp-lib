(defun block:get-attdef (blkname)
  "取块定义中的属性定义名及提示名"
  "list"
  (setq ents (vl-remove-if-not
	      '(lambda(x)
		(equal "ATTDEF"	(entity:getdxf x 0)))
	      (block:ent-list blkname)))
  (mapcar '(lambda(x)
	    (entity:getdxf x '(2 3)))
	  ents))
