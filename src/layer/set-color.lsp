(defun layer:set-color (lay int-color / lst )
  "设置图层 lay 颜色号为 int-color，lay 支持文字及*号通配符，或图层实体类型，int-color 为 0~255 之间的整数"
  "ename"
  "(layer:set-color \"jz-*\" 3)"
  (setq int-color (fix int-color))
  (cond 
   ((p:stringp lay)
    (setq lst
	  (vl-remove-if-not '(lambda (x)
			       (wcmatch (strcase x)(strcase lay)))
			    (layer:list)))
    (foreach layername lst
	     (setq %ent (entget (layer:ent layername)))
	     (entmod (subst (cons 62 int-color)(assoc 62 %ent) %ent))))
   ((p:enamep lay)
    (setq %ent (entget lay))
    (entmod (subst (cons 62 int-color)(assoc 62 %ent) %ent)))
   )
  )

