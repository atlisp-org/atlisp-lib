;;; test-std-protect-assign.lsp - std:protect-assign 测试
(defun test:std-protect-assign ()
  (test:suite 'std)
  (test:add-case 'std 'protect-assign '((lambda () (vl-catch-all-apply 'std:protect-assign (list)))) nil)
  (test:run-all))
(test:std-protect-assign)
