(defun vectra:entmod (ent datas /)
  (entmod (vectra:set (entget ent)
      datas)))
