;;; test-text-stringexplode.lsp - text:stringexplode 测试
(defun test:text-stringexplode ()
  (test:suite 'text)
  (test:add-case 'text 'stringexplode '((lambda () (vl-catch-all-apply 'text:stringexplode (list "test"))) nil)
  (test:run-all))
(test:text-stringexplode)