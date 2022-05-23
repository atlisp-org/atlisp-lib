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
