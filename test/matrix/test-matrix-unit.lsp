;;; test-matrix-unit.lsp - matrix:unit 测试
(defun test:matrix-unit ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'unit '((lambda () (vl-catch-all-apply 'matrix:unit (list)))) nil)
  (test:run-all))
(test:matrix-unit)
