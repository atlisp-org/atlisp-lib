(defun vectra:template-eval (template params / r)
  (apply (quote strcat)
    (mapcar (function (lambda (e)
          (if (vl-consp e)
            (if (setq r (vectra:get params (car e)))
              (cond ((numberp r)
                  (setq dig (cadr e))
                  (if (null dig)
                    (setq dig 0)
                    (setq dig (atoi dig)))
                  (vectra:number-padding-last r dig))
                (t (vl-princ-to-string r)))
              (strcat "{"
                (car e)
                "}"))
            e)))
      (vectra:template-parse template))))
