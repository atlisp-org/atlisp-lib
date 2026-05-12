;;; test-std-addtoolbars.lsp - std:addtoolbars 测试
(defun test:std-addtoolbars ()
  (test:suite 'std)
  (test:add-case 'std 'addtoolbars '((lambda () (vl-catch-all-apply 'std:addtoolbars (list)))) nil)
  (test:run-all))
(test:std-addtoolbars)
