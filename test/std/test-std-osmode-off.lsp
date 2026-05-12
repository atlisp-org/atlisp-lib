;;; test-std-osmode-off.lsp - std:osmode-off 测试
(defun test:std-osmode-off ()
  (test:suite 'std)
  (test:add-case 'std 'osmode-off '((lambda () (vl-catch-all-apply 'std:osmode-off (list)))) nil)
  (test:run-all))
(test:std-osmode-off)
