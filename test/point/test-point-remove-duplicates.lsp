;;; test-point-remove-duplicates.lsp - point:remove-duplicates 测试
(defun test:point-remove-duplicates ()
  (test:suite 'point)
  (test:add-case 'point 'remove-duplicates '((lambda () (vl-catch-all-apply 'point:remove-duplicates (list '((0 0) (0.0001 0.0001) (1 1))))) '((1 1) (0 0)))
  (test:run-all))
(test:point-remove-duplicates)