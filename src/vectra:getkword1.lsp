(defun vectra:getkword1 (msg kwords default / r)
  (initget (vectra:string-connect (mapcar (quote car)
        kwords)
      "
      "))
  (setq r (getkword (strcat msg "
        ["
        (vectra:string-connect (mapcar (function (lambda (e)
                (strcat (cadr e)
                  "("
                    (car e)
                    ")")))
            kwords)
          "/")
        "] <"
        default ">: ")))
  (if (null r)
    default r))
