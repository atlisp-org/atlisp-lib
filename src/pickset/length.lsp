(defun pickset:length (ss)
  "返回选择集或图元列表内图元的个数。非选择集和图元列表，则返回nil"
  (cond
    ((= 'pickset (type ss))
     (sslength ss))
    ((and (listp ss)
	  (p:ename-listp ss))
     (length ss))))
      
