(test:clear)

(test:suite 'string)

(princ "before add-case\n")

(test:add-case 'string 'test1
  '((lambda () "result"))
  "result")

(princ "after add-case\n")