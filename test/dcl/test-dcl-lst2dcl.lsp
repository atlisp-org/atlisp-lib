;;; test-dcl-lst2dcl.lsp - dcl:lst2dcl 测试
(defun test:dcl-lst2dcl ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'lst2dcl '((lambda () (vl-catch-all-apply 'dcl:lst2dcl (list)))) nil)
  (test:run-all))
(test:dcl-lst2dcl)
