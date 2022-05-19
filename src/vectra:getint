(defun vectra:getint (msg init default / r)
  (if init (initget init))
  (if (null (setq r (getint (strcat msg "
            <"
            (itoa default)
            ">"))))
    default r))
