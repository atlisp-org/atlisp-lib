(defun entity:deldxf (ename code / ent)
  "删除图元的某一组码，用于操作颜色等不是必段的组码。\n参数:\nename:图元，选择集，图元列表\ncode:组码或组码表\n"
  "更新后的图元，选择集，图元列表"
  "(entity:deldxf (car (entsel))
    62 )"
  (cond
   ((p:enamep ename)
    (if (null (wcmatch (entity:getdxf ename 0) "TCH_*"))
	(progn
	  (setq ent (entget ename))
	  (if (and (listp code))
              (mapcar (quote (lambda (x y)
			       (entity:deldxf ename x)))
		      code val)
            (progn (if (entity:getdxf ename code)
		       (entmod (vl-remove (assoc code ent)
					  ent)))
		   (entupd ename))))
      (@:log "WARN" "this function CANNOT support proxy entity.")))
   ((p:picksetp ename)
    (foreach s1 (pickset:to-list ename)
             (entity:deldxf s1 code)))
   ((p:ename-listp ename)
    (foreach s1 ename (entity:deldxf s1 code))))
  ename)
