(test:clear)

(princ "test:clear done\n")

(test:suite 'string)

(princ "test:suite done\n")

(test:add-case 'string 'test1
  '((lambda () "result"))
  "result")

(princ "after add-case\n")