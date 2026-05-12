;;; test-dcl-hr.lsp - dcl:hr 测试
(defun test:dcl-hr ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'hr '((lambda () (vl-catch-all-apply 'dcl:hr (list)))) nil)
  (test:run-all))
(test:dcl-hr)
