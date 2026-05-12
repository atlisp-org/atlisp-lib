(test:clear)

(test:suite 'string)

(princ "before setq\n")

(setq *test* '((lambda () "result")))

(princ "after setq\n")

(princ (vl-princ-to-string *test*))