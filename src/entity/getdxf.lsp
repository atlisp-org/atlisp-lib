(defun entity:getdxf (ent i / getdxf result)
  "获取图元的组码值\n参数:\nent:图元名或vla对象名\ni:组码或组码表"
  "组码值或列表"
  "(entity:getdxf (car (entsel))
    10)"
  (defun getdxf (ent i / res)
    (setq res
	  (mapcar (quote cdr)
		  (vl-remove-if-not (quote (lambda (x)
					     (= (car x)
						i)))
				    (entget ent (quote ("*"))))))
    (if (= 1 (length res))
	(car res)
	res))
  (if (p:vlap ent)
      (setq ent (vlax-vla-object->ename ent)))
  ;; (cond ((p:enamep ent)
  ;;	 (setq ent (entget ent (quote ("*"))))))
  (cond ((atom i)
	 (setq result (getdxf ent i)))
	((listp i)
	 (setq result 
	       (mapcar (quote (lambda (x)
				(getdxf ent x)))
		       i))))
  result)
