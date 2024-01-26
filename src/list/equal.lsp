(defun list:equal (lst1 lst2 fuzz)
  "比较含有浮点数的原子或表"
  "t or nil"
  "(list:equal 5.3 5.3 0.01)"
  (cond
   ((and (numberp lst1)
	 (numberp lst2))
    (equal lst1 lst2 fuzz))
   ((and (listp lst1)
	 (listp lst2)
	 (> (length lst1) 0)
	 (= (length lst1)
	    (length lst2))
	 )
    (apply 'and
	   (mapcar '(lambda(a b)
		      (list:equal
		       a b fuzz))
		   lst1 lst2)))
   (t (equal lst1 lst2))))
	 
