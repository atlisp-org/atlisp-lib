(defun base:init nil
  "@lisp 函数库基本符号及简化函数。为了保证@lisp函数库能正常运行，需先执行该函数。该函数被 @lisp 自动调用。"
  ""
  "(base:init)"
  "常用 visuallisp 全局符号。"
  (setq *acad* (vlax-get-acad-object)
	*doc* (vla-get-activedocument *acad*)
	*docs* (vla-get-documents *acad*)
	*ms* (vla-get-modelspace *doc*)
	*ps* (vla-get-paperspace *doc*)
	*blks* (vla-get-blocks *doc*)
	*lays* (vla-get-layers *doc*)
	*lts* (vla-get-linetypes *doc*)
	*sts* (vla-get-textstyles *doc*)
	*grps* (vla-get-groups *doc*)
	*dims* (vla-get-dimstyles *doc*)
	*louts* (vla-get-layouts *doc*)
	*vps* (vla-get-viewports *doc*)
	*vs* (vla-get-views *doc*)
	*dics* (vla-get-dictionaries *doc*)
	*layouts* (vla-get-layouts *doc*)
	*DISPLAY* (vla-get-display (vla-get-preferences (vla-get-application *acad*)))
	)
  "用于剪贴板的全局函数"
  (setq @:*clipboard* (vlax-get (vlax-get (vlax-get-or-create-object "HTMLFILE")
					  (quote parentwindow))
				(quote clipboarddata)))
  "简化函数"
  (setq o2e vlax-vla-object->ename)
  (setq e2o vlax-ename->vla-object)

  (setq vlap p:vlap
	stringp p:stringp
	realp p:realp
	enamep p:enamep
	variantp p:variantp
	picksetp p:picksetp
	intp p:intp
	safearrayp p:safearrayp
	ename-listp p:ename-listp
	vla-listp p:vla-listp
	string-listp p:string-listp
	dotpairp p:DotPairp
	curvep p:curvep
	)
  (setq @:*units*
	(list "m" "kg" "s" "h" "A" "K" "mol" "cd"
	      (setq m2 (strcat "m" (chr 178)))
	      (setq m3 (strcat "m" (chr 179)))
	      (strcat m3 "/mol")
	      (strcat m3 "/kg") "Hz"
	      (strcat "kg/"m3) "kg/mol" "m/s"  "rad/s" "N"
	      "Pa" "N/m" "N·s"  "J" "N·m"  "J/mol"
	      "W""J/s""J/K" "J/(mol·K)" "J/(kg·K)"
	      (strcat "N·s/"m2) "W/(m·K)"
	      (strcat m2 "/s")
	      "C" "V" "Ω"
	      "m"  "mm""cm" "dm""km"
	      "g""mg"
	      "k""M"
	      "kN""MPa""kPa"
	      "dB" "℃" "ppm" "人"
	      (chr 178)(chr 179)(chr 181)
	      "/""·""("")"
	      (strcat "W/"m2"·K")
	      "℉""Bq""lx""lm""S""H""Wb""T""F""W"
	      ))
  ;; ² 178 ³179 µ181

  
  (defun defconstant (name value)
    "定义全局常量。全局常量通常以 + 开始和结尾。逻辑意义上的。"
    ""
    "(defconstant '+aaa+ 2)"
    (setq name (vl-symbol-name name))
    (eval (list (quote pragma)
		(list (quote quote)
		      (list (cons (quote unprotect-assign)
				  name)))))
    (set (read name)
	 value)
    (eval (list (quote pragma)
		(list (quote quote)
		      (list (cons (quote protect-assign)
				  name))))))
  (defun string (para)
    "将其它类型转化为字符串。"
    (@:to-string  para)
    )
  (defun string-upcase (str)
    (strcase str))
  (defun string-downcase (str)
    (strcase str T))
  (defun string-capitalize (str)
    (strcat (string-upcase (substr str 1 1))
	    (substr str 2)))

  (defun consp (alist)
    "Verifies that an item is cons." 
    (if (and (listp alist)
	     (not alisp))
	T
	nil))

  (defun pair (x y)
    (cond ((and (null x) (null y)) '())
          ((and (not (atom x)) (not (atom y)))
           (cons (list (car x) (car y))
		 (pair (cdr x) (cdr y))))))

  (defun getf (plist property)
    (cadr (member property plist)))

  (defun incf (x)
    (setq x (1+ x)))
  t)
