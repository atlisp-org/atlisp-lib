(defun xdata:remove-appid (ename appid / lst)
  "删除图元的应用名为appid的扩展数据"
  ""
  "(xdata:remove-appid (car(entsel)) \"ACAD\")"
  (cond
    ((p:enamep ename)
     (entmod
      (list
       (cons -1 ename)
       (cons -3
	     (mapcar
	      '(lambda(x)
		(if (string-equal appid (car x))
		    (cons (car x) nil)
		    x)
		)
	      (cdr (assoc -3 (entget ename '("*"))))
	      )))))
    ((p:ename-listp ename)
     (mapcar '(lambda(x)(xdata:remove-appid x appid)) ename))
    ((p:picksetp ename)
     (mapcar '(lambda(x)(xdata:remove-appid x appid)) (pickset:to-list ename)))))
