;;; test-std-endundo.lsp - std:endundo 测试
(defun test:std-endundo ()
  (test:suite 'std)
  (test:add-case 'std 'endundo '((lambda () (vl-catch-all-apply 'std:endundo (list)))) nil)
  (test:run-all))
(test:std-endundo)
