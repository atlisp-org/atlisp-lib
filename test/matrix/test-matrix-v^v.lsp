;;; test-matrix-v^v.lsp - matrix:v^v 测试
(defun test:matrix-v^v ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'v^v '((lambda () (vl-catch-all-apply 'matrix:v^v (list)))) nil)
  (test:run-all))
(test:matrix-v^v)
