;;; test-std-return.lsp - std:return 测试
(defun test:std-return ()
  (test:suite 'std)
  (test:add-case 'std 'return '((lambda () (vl-catch-all-apply 'std:return (list)))) nil)
  (test:run-all))
(test:std-return)
