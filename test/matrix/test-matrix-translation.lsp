;;; test-matrix-translation.lsp - matrix:translation 测试
(defun test:matrix-translation ()
  (test:suite 'matrix)
  (test:add-case 'matrix 'translation '((lambda () (vl-catch-all-apply 'matrix:translation (list)))) nil)
  (test:run-all))
(test:matrix-translation)
