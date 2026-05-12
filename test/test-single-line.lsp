(test:clear)
(test:suite 'string)
(princ "X\n")
(test:add-case 'string 'test1 '((lambda () "result")) "result")
(princ "Y\n")
*test-suite*