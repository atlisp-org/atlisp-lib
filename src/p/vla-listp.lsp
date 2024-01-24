(defun p:vla-listp (lst)
  "判断是否为vla对象列表"
  (if (and lst
	   (listp lst))
      (apply (quote and)
	     (mapcar (quote vlap)
		     lst))))
