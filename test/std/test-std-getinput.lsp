;;; test-std-getinput.lsp - std:getinput 测试
(defun test:std-getinput ()
  (test:suite 'std)
  (test:add-case 'std 'getinput '((lambda () (vl-catch-all-apply 'std:getinput (list)))) nil)
  (test:run-all))
(test:std-getinput)
