;;; test-matrix-mxm.lsp - matrix:mxm 测试
(defun test:matrix-mxm ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'mxm '((lambda () (vl-catch-all-apply 'matrix:mxm (list)))) nil)
  (test:run-all))
(test:matrix-mxm)
