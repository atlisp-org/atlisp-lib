(defun vectra:edit-value (msg old / value)
  (cond ((= (quote real)
        (type old))
      (setq value (getdist (strcat msg "
            <"
            (rtos old 2 2)
            ">: "))))
    ((= (quote int)
        (type old))
      (setq value (getint (strcat msg "
            <"
            (itoa old)
            ">: "))))
    ((= (quote list)
        (type old))
      (setq value (getpoint (strcat msg "
            <"
            (vl-princ-to-string old)
            ">: "))))
    ((= (quote str)
        (type old))
      (setq value (getstring (strcat msg "
            <"
            old ">: ")))))
  (if (or (null value)
      (= ""
        value))
    old value))
