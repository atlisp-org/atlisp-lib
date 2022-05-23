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
