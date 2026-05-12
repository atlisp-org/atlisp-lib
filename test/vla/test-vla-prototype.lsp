;;; test-vla-prototype.lsp - vla:prototype 测试
(defun test:vla-prototype ()
  (test:suite 'vla)
  (test:add-case 'vla 'prototype '((lambda () (vl-catch-all-apply 'vla:prototype (list)))) nil)
  (test:run-all))
(test:vla-prototype)
