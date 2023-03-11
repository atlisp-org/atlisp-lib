(defun entity:putdxf (ename code val / ent)
  "更新图元的组码值\n参数:\nename:图元，选择集，图元列表\ncode:组码或组码表\nval:值或者值表"
  "更新后的图元，选择集，图元列表"
  "(entity:putdxf (car (entsel))
    10 '(0 0 0))"
  (cond
   ((p:enamep ename)
    (if (null (wcmatch (entity:getdxf ename 0) "TCH_*"))
	(progn
	  (setq ent (entget ename))
	  (if (and (listp code)
		   (listp val))
              (mapcar (quote (lambda (x y)
			       (entity:putdxf ename x y)))
		      code val)
            (if (null (entity:getdxf ename code))
		(entmod (append ent (list (cons code val))))
              (entmod (subst (cons code val)
			     (assoc code ent)
			     ent))))
	  (entupd ename))
      (@:log "WARR" "this function CANNOT support proxy entity.")))
   ((p:picksetp ename)
    (foreach s1 (pickset:to-list ename)
             (entity:putdxf s1 code val)))
   ((p:ename-listp ename)
    (foreach s1 ename (entity:putdxf s1 code val))))
  ename)
