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
