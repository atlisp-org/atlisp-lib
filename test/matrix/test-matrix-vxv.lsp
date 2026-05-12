;;; test-matrix-vxv.lsp - matrix:vxv 测试
(defun test:matrix-vxv ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'vxv '((lambda () (vl-catch-all-apply 'matrix:vxv (list)))) nil)
  (test:run-all))
(test:matrix-vxv)
