;;; test-std-addmenu.lsp - std:addmenu 测试
(defun test:std-addmenu ()
  (test:suite 'std)
  (test:add-case 'std 'addmenu '((lambda () (vl-catch-all-apply 'std:addmenu (list)))) nil)
  (test:run-all))
(test:std-addmenu)
