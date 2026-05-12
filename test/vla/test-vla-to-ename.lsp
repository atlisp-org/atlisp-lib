;;; test-vla-to-ename.lsp - vla:to-ename 测试
(defun test:vla-to-ename ()
  (test:suite 'vla)
  (test:add-case 'vla 'to-ename '((lambda () (vl-catch-all-apply 'vla:to-ename (list)))) nil)
  (test:run-all))
(test:vla-to-ename)
