;;; test-vla-list2arrays.lsp - vla:list2arrays 测试
(defun test:vla-list2arrays ()
  (test:suite 'vla)
  (test:add-case 'vla 'list2arrays '((lambda () (vl-catch-all-apply 'vla:list2arrays (list)))) nil)
  (test:run-all))
(test:vla-list2arrays)
