;;; test-text-get-matrix.lsp - text:get-matrix 测试
(defun test:text-get-matrix ()
  (test:suite 'text)
  (test:add-case 'text 'get-matrix '((lambda () (vl-catch-all-apply 'text:get-matrix nil))) nil)
  (test:run-all))
(test:text-get-matrix)