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

  (setq *linefile*
	(cond
	  (is-bricscad
	   "default.lin")
	  (is-gcad
	   "gcad.lin")
	  (is-zwcad
	   "zwcad.lin")
	  (t
	   "acad.lin")
	  ))
  (setq *isolinefile*
	(cond
	  (is-bricscad
	   "iso.lin")
	  (is-gcad
	   "gcadiso.lin")
	  (is-zwcad
	   "zwcadiso.lin")
	  (t
	   "acadiso.lin")
	  ))
  (setq *patfile*
	(cond
	  (is-bricscad
	   "default.pat")
	  (is-gcad
	   "gcad.pat")
	  (is-zwcad
	   "zwcad.pat")
	  (t
	   "acad.pat")
	  ))
  (setq *isopatfile*
	(cond
	  (is-bricscad
	   "iso.pat")
	  (is-gcad
	   "gcadiso.pat")
	  (is-zwcad
	   "zwcadiso.pat")
	  (t
	   "acadiso.pat")
	  ))
  t)
