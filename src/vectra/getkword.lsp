(defun vectra:getkword (msg kword default / r)
  (initget kword)
  (if (null (setq r (getkword (strcat msg "
            <"
            default ">: "))))
    default r))
