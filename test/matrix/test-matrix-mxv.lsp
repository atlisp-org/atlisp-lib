;;; test-matrix-mxv.lsp - matrix:mxv 测试
(defun test:matrix-mxv ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'mxv '((lambda () (vl-catch-all-apply 'matrix:mxv (list)))) nil)
  (test:run-all))
(test:matrix-mxv)
