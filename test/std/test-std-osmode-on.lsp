;;; test-std-osmode-on.lsp - std:osmode-on 测试
(defun test:std-osmode-on ()
  (test:suite 'std)
  (test:add-case 'std 'osmode-on '((lambda () (vl-catch-all-apply 'std:osmode-on (list)))) nil)
  (test:run-all))
(test:std-osmode-on)
