(defun p:ename-listp (lst)
  "判断是否为图元名列表"
  (if (and
       lst
       (listp lst))
      (apply (quote and)
	     (mapcar (quote enamep)
		     lst))))
