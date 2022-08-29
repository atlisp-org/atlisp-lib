(defun ext:probe-fun (fun / args iter iter-depth)
  "探测函数的参数个数(最小)及参数类型。"
  "expr or nil"
  "(ext:probe-fun 'boole)"
  (setq args '())
  (setq iter-depth 0)
  (setq str "string"
	intnum (fix 5)
	num 3.14
	ent (entity:make-circle '(0 0 0) 100)
	vlaobj (e2o ent)
	ss (ssadd ent)
	pt '(1 1 0)
	)
  (defun get-type (x)
    (cond
     ((listp x)
      (cond
       ((equal x '(1 1 0))
	'point)
       (t 'lst)))
     (t (type x))
    ))
  (defun iter ()
    ;;(princ args)
    (setq iter-depth (1+ iter-depth))
    (if (and
	 (vl-catch-all-error-p
	  (setq errobj
		(vl-catch-all-apply
		 fun
		 (reverse args))))
	 (setq errmsg (vl-catch-all-error-message errobj)))
	(if (< iter-depth 100)
	    (cond
	     ((wcmatch errmsg "*参数太少*")
	      (setq args  (cons (read (strcat "arg" (itoa (length args)))) args))
	      (iter))
	     ((wcmatch errmsg "参数类型错误*")
	      (@:log "INFO" errmsg)
	      (setq typeerr (string:to-list errmsg " "))
	      (@:log "INFO" (vl-prin1-to-string typeerr))
	      (cond
	       ((wcmatch (cadr typeerr) "stringp*")
		(setq args (subst str (read (last typeerr)) args)))
	       ((wcmatch (cadr typeerr) "listp*")
		(setq args (subst '(L I S T) (read (last typeerr)) args)))
	       ((wcmatch (cadr typeerr) "numberp*")
		(setq args (subst num (read (last typeerr)) args)))
	       ((wcmatch (cadr typeerr) "fixnump*")
		(setq args (subst intnum (read (last typeerr)) args)))
	       ((wcmatch (cadr typeerr) "lselsetp*")
		(setq args (subst ss (read (last typeerr)) args)))
	       ((wcmatch (cadr typeerr) "lentity*")
		(setq args (subst ent (read (last typeerr)) args)))
	       ((wcmatch (cadr typeerr) "VLA-OBJECT*")
		(setq args (subst vlaobj (read (last typeerr)) args)))
	       ((wcmatch (cadr typeerr) "二维/三维点*")
		(setq args (subst pt (read (last typeerr)) args)))
	       ;; TODO 参数类型错误扩展
	       )
	      (iter))
	     ((wcmatch errmsg "no function definition*")
	      (setq args (subst 'princ (read (caddr typeerr)) args))
	      (iter))
	     (t
	      (princ errmsg)
	      (princ "  near completed \n")
	      (cons fun (mapcar 'get-type (reverse args)))
	      )))
      (progn
	(princ "probe completed!\n")
	(cons fun (mapcar 'get-type (reverse args)))
	)
      )
    )
  (iter)
  )
