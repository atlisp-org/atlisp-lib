(defun vla:prototype (obj)
  "返回对象类、属性和方法组成的列表。"
  "list"
  "(vla:prototype *DOC*)"
  ;; (vlax-dump-object obj t)
  (setq atoms (atoms-family 1))
  (setq allproperties
	(mapcar '(lambda(x)
		  (substr x 9))
		(vl-remove-if-not
		 '(lambda(x) (wcmatch x "VLA-GET-*"))
		 atoms)))
  (setq allmethods
	(mapcar '(lambda(x)
		  (substr x 5))
		(vl-remove-if-not
		 '(lambda(x)(and (wcmatch x "VLA-*")
			     (wcmatch x "~VLA-GET-*")
			     (wcmatch x "~VLA-PUT-*"))
		   )
		 atoms)))
  (setq properties
	(vl-remove-if-not '(lambda(x)(vlax-property-available-p obj x))
			  allproperties))
  (setq methods
	(vl-remove-if-not '(lambda(x)(vlax-method-applicable-p obj x))
			  allmethods))
  (list 
   (substr (cadr (string:to-list (vl-princ-to-string obj) " "))6)
   properties methods)
  )

