;;; test-std-addsupportpath.lsp - std:addsupportpath 测试
(defun test:std-addsupportpath ()
  (test:suite 'std)
  (test:add-case 'std 'addsupportpath '((lambda () (vl-catch-all-apply 'std:addsupportpath (list)))) nil)
  (test:run-all))
(test:std-addsupportpath)
