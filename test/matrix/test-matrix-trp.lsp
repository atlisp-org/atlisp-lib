;;; test-matrix-trp.lsp - matrix:trp 测试
(defun test:matrix-trp ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'trp '((lambda () (vl-catch-all-apply 'matrix:trp (list)))) nil)
  (test:run-all))
(test:matrix-trp)
