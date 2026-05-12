;;; test-dcl-input.lsp - dcl:input 测试
(defun test:dcl-input ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'input '((lambda () (vl-catch-all-apply 'dcl:input (list)))) nil)
  (test:run-all))
(test:dcl-input)
