;;; test-demo-demo.lsp - demo:demo 测试
(defun test:demo-demo ()
  (test:suite 'demo)
  (test:add-case 'demo 'demo '((lambda () (vl-catch-all-apply 'demo:demo (list '(a b) '(0 0 0))))) nil)
  (test:run-all))
(test:demo-demo)