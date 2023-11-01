(defun text:box (ent-text / tbox box mrz mt)
  "获取单行文本的文本框"
  "4点矩形框"
  (setq tbox(apply 'point:rec-2pt->4pt (textbox(entget ent-text))))
  (setq r1 (- (entity:getdxf ent-text 50)))
  (setq pt-base (entity:getdxf ent-text 10))
  (mapcar '(lambda(x)
	    (matrix:mxp (apply 'matrix:translation pt-base)
	     (matrix:mxp (matrix:rotation-z r1) x)))
	  tbox))
  
  
