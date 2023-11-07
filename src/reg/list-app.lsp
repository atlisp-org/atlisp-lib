(defun-q reg:list-app ()
  "列出vlax-get-or-create-object可用的应用对象 "
  "lst"
  
  (vl-remove-if-not
   '(lambda(x)(wcmatch x "*\.Application\.*,*\.App" ))
   (vl-registry-descendents "HKEY_CLASSES_ROOT")))
