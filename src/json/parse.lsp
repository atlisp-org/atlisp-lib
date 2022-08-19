(defun json:parse (str)
  "Json 字符串转化为 lisp 列表。临时代码."
  "list"
  (foreach x
	   '(("(" . "{")
	     (")" . "}")
	     ("(" . ":[")
	     (")" . "]")
	     (")(" .  ",")
	     (" . " . ":")
	     ("http:" . "http . ")
	     )
	   (setq str
		 (string:subst-all
		  (car x)
		  (cdr x)
		  str)))
  (read(strcat "(" str")"))
  )

