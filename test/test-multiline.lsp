(test:clear)

(test:suite 'string)

(princ "line1 done\n")

(princ "line2 done\n")

(test:add-case 'string 'test1
  '((lambda () "result"))
  "result")

(princ "after add-case\n")

*test-suite*