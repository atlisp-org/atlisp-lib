;;; test-std-removesupportpath.lsp - std:removesupportpath 测试
(defun test:std-removesupportpath ()
  (test:suite 'std)
  (test:add-case 'std 'removesupportpath '((lambda () (vl-catch-all-apply 'std:removesupportpath (list)))) nil)
  (test:run-all))
(test:std-removesupportpath)
