(defun ui:kword (title lst-str / olddyn *error* short?)
  "下拉列表选择,当 lst-str字符串表中有空格和汉字，提示信息将显示选择序号"
  "选中的字符串"
  "(ui:kword \"Please select:\" '(\"a\"\"b\"\"c\"))"
  (defun *error* (msg)
    (if olddyn
	(setvar "dynmode" olddyn))
    (princ msg)
    (princ)
    )
  (if (and (listp lst-str)
	   (> (length lst-str) 0)
	   (p:stringp title)
	   )
      (progn
	(setq short? t)
	(mapcar
	 '(lambda(x / lst)
	   (setq lst (string:s2l-ansi x))
	   (if (or (member 32 lst)
		   (> (apply 'max  lst) 128))
	       (setq short? nil)))
	 lst-str)
	(if (setq olddyn (getvar "dynmode"))
	    (setvar "dynmode" 3))
	(setq lst-n 
  	      (mapcar 'itoa (list:range 1 (length lst-str) 1))
  	      )
	(initget (string:from-list (if short? lst-str lst-n) " "))
	(setq res
	      (getkword (strcat
			 title
			 "["
			 (string:from-list
			  (if short?
			      lst-str
			      (mapcar '(lambda(x y)
					(strcat
					 x "("y")"))
				      lst-str lst-n))
			  
			  "/")
			 "]")))
	(if olddyn
	    (setvar "dynmode" olddyn))
	(if short?
	    res
	    (cdr (assoc res (mapcar 'cons lst-n lst-str))))
	)))
