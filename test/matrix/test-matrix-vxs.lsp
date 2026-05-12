;;; test-matrix-vxs.lsp - matrix:vxs 测试
(defun test:matrix-vxs ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'vxs '((lambda () (vl-catch-all-apply 'matrix:vxs (list)))) nil)
  (test:run-all))
(test:matrix-vxs)
