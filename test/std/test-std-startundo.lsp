;;; test-std-startundo.lsp - std:startundo 测试
(defun test:std-startundo ()
  (test:suite 'std)
  (test:add-case 'std 'startundo '((lambda () (vl-catch-all-apply 'std:startundo (list)))) nil)
  (test:run-all))
(test:std-startundo)
