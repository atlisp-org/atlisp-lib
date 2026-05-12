(test:clear)
(test:suite 's)
(test:add-case 's 't1 '((lambda () (+ 1 2))) 3)
(princ "loaded")
42