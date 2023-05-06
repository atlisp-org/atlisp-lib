(defun list:equal (lst1 lst2 fuzz)
  "比较含有浮点数的原子或表"
  (cond
   ((numberp lst1)
    (equal lst1 lst2 fuzz))
   ((and (listp lst1)
	 (listp lst2))
    (apply 'and
	   (mapcar '(lambda(a b)
		      (list:equal
		       a b fuzz))
		   lst1 lst2)))
   (t (equal lst1 lst2))))
	 
