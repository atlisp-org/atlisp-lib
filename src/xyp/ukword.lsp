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
