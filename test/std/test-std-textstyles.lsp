;;; test-std-textstyles.lsp - std:textstyles 测试
(defun test:std-textstyles ()
  (test:suite 'std)
  (test:add-case 'std 'textstyles '((lambda () (vl-catch-all-apply 'std:textstyles (list)))) nil)
  (test:run-all))
(test:std-textstyles)
