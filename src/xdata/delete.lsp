(defun xdata:delete (ename / lst)
  "删除图元的扩展数据"
  (cond
   ((p:enamep ename)
    (entmod
     (list
      (cons -1 ename)
      (cons -3
	    (mapcar
	     'list
	     (mapcar
	      'car
	      (cdr (assoc -3 (entget ename '("*"))))
	      ))))))
   ((p:listp ename)
    (mapcar 'xdata:delete ename))
   ((p:picksetp ename)
    (mapcar 'xdata:delete (pickset:to-list ename)))))
   
