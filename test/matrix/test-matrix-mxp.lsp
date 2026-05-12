;;; test-matrix-mxp.lsp - matrix:mxp 测试
(defun test:matrix-mxp ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'mxp '((lambda () (vl-catch-all-apply 'matrix:mxp (list)))) nil)
  (test:run-all))
(test:matrix-mxp)
