(defun p:functionp (sym)
  "测试符号是不是函数,支持内部函数，用户函数，EXRX扩展函数和defun-q定义的函数"
  "T or nil"
  "(p:functionp boole)=> T"
  (or (member  (type sym)
	       '(SUBR USUBR EXRXSUBR))
      (and
       (not (null sym))
       (listp sym)
       (listp (car sym))
       (apply 'and
	      (mapcar 'vl-symbolp (caar sym))))
      ))
