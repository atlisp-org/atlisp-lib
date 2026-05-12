;;; test-std-removemenuitem.lsp - std:removemenuitem 测试
(defun test:std-removemenuitem ()
  (test:suite 'std)
  (test:add-case 'std 'removemenuitem '((lambda () (vl-catch-all-apply 'std:removemenuitem (list)))) nil)
  (test:run-all))
(test:std-removemenuitem)
