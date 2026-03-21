(defun pickset:to-selectionset (ss / ssbojs cnt ssetObj ssets)
  "将选择集转为选择集对象"
  "选择集对象"
  (if (p:picksetp ss)
      (progn
	(setq ssets (vla-get-SelectionSets *doc*))
	;; 如果有tmpsset对象需要删除
	(setq ssetObj (vla-Add ssets "tmpsset"))
	(setq ssobjs (vlax-make-safearray vlax-vbObject (cons 0 (- (sslength ss) 1))))
	(setq cnt 0)
	(repeat
	 (sslength ss)
	 (vlax-safearray-put-element ssobjs cnt (e2o (ssname ss cnt)))
	 (setq cnt (1+ cnt))
	 )
	(vla-AddItems ssetObj ssobjs)
	ssetObj
	))
  )
