(defun vectra:confirm (msg default / r)
  (initget "Y N ")
  (if (null (setq r (getkword (strcat msg "
            [是(Y)/否(N)] <"
            default ">:"))))
    (setq r default))
  r)
