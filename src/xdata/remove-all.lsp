(defun xdata:remove-all (ename / lst)
  "删除图元的所有扩展数据"
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
     (mapcar 'xdata:remove-all ename))
    ((p:picksetp ename)
     (mapcar 'xdata:remove-all (pickset:to-list ename)))))
