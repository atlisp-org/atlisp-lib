(defun vla:make-object-model (obj)
  "生成CAD对象系统"
  (setq dumpdata (vla:dump obj))
  (setq fp (open "D:\\object-model.lsp" "a"))
  (write-line (strcase (vl-princ-to-string dumpdata) t) fp)
  (close fp)
  (setq fpjson (open "C:\\Users\\vitalgg\\atlisp/vscode/snippets/objectModel.json" "a"))
  (write-line (strcat
	       "\""(car dumpdata)"\":{"
	       (if (cadr dumpdata)
		   (strcat 
		    "\"property\": ["
		    
		    (string:from-list
		     (mapcar '(lambda(x) (strcat "\""(strcase (vl-princ-to-string x)t) "\""))
			     (cadr dumpdata))
		     ",")
		    "]")
		   "")
	       (if (caddr dumpdata)
		   (strcat ",\"method\": ["
			   (string:from-list
			    (mapcar '(lambda(x) (strcat "\""(strcase (vl-princ-to-string x) t)"\""))
				    (caddr dumpdata))
			    ",")
			   "]")
		   "")
	       "},")
	      fpjson)
  (close fpjson)
  (setq objs (cons (cadr (string:to-list (vl-princ-to-string obj) " ")) objs))
  (princ (strcat "\nOBJ:" (cadr (string:to-list (vl-princ-to-string obj) " ")) "\n"))
  (foreach prop%  (cadr dumpdata)
	   (princ (strcat prop% "\n"))
	   (if (and
		(not (member (read prop%) '(VBE APPLICATION ActiveUCS STATUSID GRIPSIZE Path XREFDATABASE SECTIONMANAGER mspace ACTIVEPVIEWPORT Coordinate WEIGHTS DIMCONSTRVALUE DIMCONSTREXPRESSION DIMCONSTRDESC DIMCONSTRNAME)))
		(cadr (string:to-list (vl-princ-to-string (vlax-get-property obj prop%)) " "))
		(vlax-get-property obj prop%)
		(p:vlap (vlax-get-property obj prop%))
		(not (member (cadr (string:to-list (vl-princ-to-string (vlax-get-property obj prop%)) " ")) objs)))
	       (progn
		 (princ prop%)
		 (vla:make-object-model (vlax-get-property obj prop%))))))
