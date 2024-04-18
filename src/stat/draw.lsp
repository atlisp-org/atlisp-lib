(defun stat:draw (/ n pt ent-table *error*)
  "绘制最后一次统计的结果"
  (defun *error*(msg)
    (if ent-table
	(entdel ent-table))
    (princ msg))
  (if  @:tmp-stat-result
       (progn
	 (setq pt '(0 0 0))
	 (setq n 0)
	 (setq ent-table
	       (table:make pt "统计结果"
			   (quote ("项目"
				   "个数"))
			   (mapcar (quote (lambda (x)
					    (list (car x)
						  (cdr x))))
			    @:tmp-stat-result)))
	 (ui:dyndraw ent-table pt)
	 )))
 
