(test:clear)

(test:suite 'string)

(princ "before add-case\n")

(test:add-case 'string 'test1
  (list 'lambda nil "result")
  "result")

(princ "after add-case\n")