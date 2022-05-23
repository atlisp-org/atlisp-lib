(defun xyp:Ureal (bit kwd msg def / inp)
  "实型数输入格式化"
  "real"
  "(setq no1 (Ureal 1 \"\" \"实数\" no1))"
  (if def
    (setq msg (strcat "\n" msg "<" (rtos def 2) ">: ")
	  bit (* 2 (fix (/ bit 2)))
    )
    (setq msg (strcat "\n" msg ": "))
  )
  (initget bit kwd)
  (setq inp (getreal msg))
  (if inp inp def)
)

(defun xyp:Ustr (bit msg def spflag / inp nval)
  "字符串输入格式化"
  "string"
  "(setq txt1 (Ustr 1 \"字符串\" txt1 nil))"
  (if (and def (/= def ""))
    (setq msg (strcat "\n" msg "<" def ">: ")
	  inp (getstring msg spflag)
	  inp (if (= inp "")def inp)
    )
    (progn
      (setq msg (strcat "\n" msg ": "))
      (if (= bit 1)
	(while (= "" (setq inp (getstring msg spflag))))
	(setq inp (getstring msg spflag))
      )
    )
  )
  (if inp inp def)
)

(defun xyp:Udist (bit kwd msg def bpt / inp)
  "距离输入格式化"
  "real"
  "(setq dist1 (Udist 1 \"\" \"距离\" dist1 '(0 0)))"
  (if def
    (setq msg (strcat "\n" msg "<" (rtos def) ">: ")bit (* 2 (fix (/ bit 2))))
    (setq msg (strcat "\n" msg ": "))
  )
  (initget bit kwd)
  (setq inp (if bpt(getdist msg bpt)(getdist msg)))
  (if inp inp def)
)

(defun xyp:Ukword (bit kwd msg def / inp)
  "关键字输入格式化"
  "int"
  "(setq tx1 (Ukword 1 \"1 2\" \"1-任意点/2-中心点\" tx1))"
  (if (and def (/= def ""))
    (setq msg (strcat "\n" msg "<" def ">: ") bit (* 2 (fix (/ bit 2))))
    (setq msg (strcat "\n" msg ": "))
  )
  (initget bit kwd)
  (setq inp (getkword msg))
  (if inp inp def)
)

(defun xyp:Uint (bit kwd msg def / inp)
  "整型数输入格式化"
  ""
  "(setq no1 (Uint 1 \"\" \"整数\" no1))"
  (if def
      (setq msg (strcat "\n" msg "<" (itoa def) ">: ") bit (* 2 (fix (/ bit 2))))
    (setq msg (strcat "\n" msg ": "))
    )
  (initget bit kwd)
  (setq inp (getint msg))
  (if inp inp def)
  )

(defun xyp:Upoint (bit kwd msg def bpt / inp)
  "输入点格式化"
  ""
  "(setq pt (Upoint 1 \"\" \"点\" pt '(0 0)))"
  (if def
    (setq pts (strcat(rtos (car def))
		", "
		(rtos (cadr def))
		(if (and (caddr def) (= 0 (getvar "flatland")))
		  (strcat ", " (rtos (caddr def)))
		  ""
		)
	      )
	  msg (strcat "\n" msg "<" pts ">: ")
	  bit (* (fix (/ bit 2)))
    )
    (setq msg (strcat "\n" msg ": "))
  )
  (initget bit kwd)
  (setq inp (if bpt(getpoint msg bpt)(getpoint msg)))
  (if inp inp def)
)

(defun xyp:Uangle (bit kwd msg def bpt / inp)
  "格式化输入角度然后返回以弧度表示的角度"
  "ang"
  "(setq ang (Uangle 1 \"\" \"角度\" ang '(0 0)))"
  (if def
      (setq msg (strcat "\n" msg "<" (angtos def) ">: ")bit (* (fix (/ bit 2))))
    (setq msg (strcat "\n" msg ": "))
    )
  (initget bit kwd)
  (setq inp (if bpt(getangle msg bpt)(getangle msg)))
  (if inp inp def)
  )
