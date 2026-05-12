(test:clear)

(test:suite 'string)

(test:add-case 'string 'test1
  '((lambda () "result"))
  "result")