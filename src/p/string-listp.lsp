(defun p:string-listp (lst)
  "判断是否为字符串列表"
  (if (and lst
	   (listp lst))
      (apply (quote and)
	     (mapcar (quote p:stringp)
		     lst))))
