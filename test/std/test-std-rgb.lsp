;;; test-std-rgb.lsp - std:rgb 测试
(defun test:std-rgb ()
  (test:suite 'std)
  (test:add-case 'std 'rgb '((lambda () (vl-catch-all-apply 'std:rgb (list)))) nil)
  (test:run-all))
(test:std-rgb)
