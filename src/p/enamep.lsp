(defun p:enamep (arg)
  "判断是否图元"
  (equal (type arg)
	 (quote ename)))
