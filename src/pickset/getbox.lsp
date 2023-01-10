(defun pickset:getbox (ss offset / ptlist)
  "获取选择集的包围盒。ss 为选择集，图元或图元列表"
  "外框（偏移后）的左下，右上角点"
  "(pickset:getbox sel 0.2)"
  (cond
   ((= 'pickset (type ss))
    (setq ss (pickset:to-list ss)))
   ((= 'ename (type ss))
    (setq ss (list ss)))
   ((p:vla-listp ss)
    (setq ss (mapcar 'o2e ss)))

   )
  (if (p:ename-listp ss)
      (progn
	(setq ptlist (apply (quote append)
			    (mapcar (quote (lambda (x)
					     (entity:getbox x offset)))
				    ss)))
	(list (apply (quote mapcar)
		     (cons (quote min)
			   ptlist))
	      (apply (quote mapcar)
		     (cons (quote max)
			   ptlist))))
    (progn (@:log "ERROR" "parameter is NOT pickset")
	   nil)))
