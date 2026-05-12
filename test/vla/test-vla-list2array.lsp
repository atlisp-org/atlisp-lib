;;; test-vla-list2array.lsp - vla:list2array 测试
(defun test:vla-list2array ()
  (test:suite 'vla)
  (test:add-case 'vla 'list2array '((lambda () (vl-catch-all-apply 'vla:list2array (list)))) nil)
  (test:run-all))
(test:vla-list2array)
