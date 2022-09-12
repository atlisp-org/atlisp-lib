(defun datetime:get-internal-real-time (/ cdate year mon day h m s)
  "获取本地实时时间，单位为秒"
  "Int"
  (setq cdate (getvar "cdate"))
  (datetime:mktime
   (list
    (setq year (fix (/ cdate 10000)))
    (setq mon (fix(/ (- cdate (* year 10000)) 100)))
    0
    (setq day (fix(- cdate (* 100(fix (/ cdate 100))))))
    (setq h  (fix(* 100(- cdate (fix cdate)))))
    (setq m  (fix(* 100(- (* 100 cdate) (fix (* 100 cdate))))))
    (setq s  (fix(* 100(- (* 10000 cdate) (fix (* 10000 cdate))))))
    0))
  )
