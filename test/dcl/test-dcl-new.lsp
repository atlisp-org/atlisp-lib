;;; test-dcl-new.lsp - dcl:new 测试
(defun test:dcl-new ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'new '((lambda () (vl-catch-all-apply 'dcl:new (list)))) nil)
  (test:run-all))
(test:dcl-new)
