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
