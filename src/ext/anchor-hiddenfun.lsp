(defun ext:anchor-hiddenfun (fun prefix / dat file fo len fun1 )
  "显化AutoCAD 隐藏的函数, fun 隐藏函数名；prefix 显化函数的前缀。"
  ""
  "(ext:anchor-hiddenfun 'beep 'at-)"
  (if (= (type fun) 'sym)(setq fun (strcase (vl-symbol-name fun) t)))
  (cond
   ((null prefix) (setq prefix ""))
   ((= (type prefix) 'sym)(setq prefix (strcase (vl-symbol-name prefix) t)))
   ((/= 'str (type prefix)) (setq prefix ""))
   (t (setq prefix ""))
   )
  (setq fun1 (strcat prefix fun))
  (setq len(+ (strlen fun) (strlen fun1) 28))
  (setq file (strcat @:*prefix* ".cache\\" (string:subst-all "-" ":" fun) ".fas"))
  (setq dat
        (append
         '(13 266 32)
	 (vl-string->list "FAS4-FILE ; Do not change it!")
	 '(13 266 49 13 266 49 32 36 32 36)
	 '(13 266)
         (vl-string->list (itoa len))
         '(32 52 32 36 20 1 1 1 256 219)
         (vl-string->list fun1)
         '(256 256 214)
         (vl-string->list fun)
         '(256 256 1 67 256 256 2 256 266 266 131 1 256 160 134 256 256 1 22 36 59 )
	 (vl-string->list "@lisp")
	 )
        )
  (if (setq fo (open file "w"))
      (progn
	(foreach x dat (write-char x fo))
	(close fo)
	(load file)
	(eval(read fun)))
    (princ (strcat "Manifest faile."))
    )
  )
