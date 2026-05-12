;;; test-std-insertpopmenuitems.lsp - std:insertpopmenuitems 测试
(defun test:std-insertpopmenuitems ()
  (test:suite 'std)
  (test:add-case 'std 'insertpopmenuitems '((lambda () (vl-catch-all-apply 'std:insertpopmenuitems (list)))) nil)
  (test:run-all))
(test:std-insertpopmenuitems)
