(defun reg:list-app ()
  "列出vlax-get-or-create-object可用的应用对象 "
  "lst"

  (setq axroot "HKEY_LOCAL_MACHINE\\SOFTWARE\\Classes\\WOW6432Node\\CLSID")
  (setq clsids
	(vl-remove-if-not
	 '(lambda(x / ax)
	   (setq sub (mapcar 'strcase (vl-registry-descendents (strcat axroot "\\"x))))
	   (and (member (strcase "InProcServer32") sub)
	    (member (strcase "ProgID")sub))
	   )
	 (vl-registry-descendents axroot)))
  (mapcar '(lambda(x)
	    (vl-registry-read (strcat axroot "\\"x"\\ProgID")))
	  clsids))
