;;; test-ext-probe-fun.lsp - ext:probe-fun 测试
(defun test:ext-probe-fun ()
  (test:suite 'ext)
  (test:add-case 'ext 'probe-fun '((lambda () (vl-catch-all-apply 'ext:probe-fun (list 'princ)))) nil)
  (test:run-all))
(test:ext-probe-fun)