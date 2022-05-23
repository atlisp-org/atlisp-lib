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
