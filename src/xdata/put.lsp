(defun xdata:put (ename appid values / xdata xdata-new )
  "向图元 ename 附加扩展数据 values,values 为一个值或一些值的列表"
  "ename"
  "(xdata:put(car(entsel)) \"atlisp\"  '(10 100))"
  (setq appid (strcase appid))
  (regapp appid)
  (if (atom values)
      (setq values (list values)))
  (setq xdata-new
	(vl-remove nil
		   (mapcar '(lambda(x)
			     (cond
			       ((p:stringp x)
				(cons 1000 x))
			       ((and (p:intp x)(< (abs x) 32767))
				(cons 1070 x))
			       ((and (p:intp x)(> (abs x) 32767))
				(cons 1071 x))
			       ((p:realp x)
				(cons 1040 x))
			       ))
			   values)))
  (setq xdata (cdr (assoc -3 (entget ename '("*")))))
  (if (assoc appid xdata)
      (setq xdata
	    (subst
	     (cons appid
		   (append (cdr (assoc appid xdata))
			   xdata-new))
	     (assoc appid xdata)
	     xdata))
      (setq xdata
	    (append
	     xdata
	     (list
	      (cons appid xdata-new)))))
  (entmod (append
	   (entget ename)
	   (list (cons -3 xdata )))
	  )
  )
