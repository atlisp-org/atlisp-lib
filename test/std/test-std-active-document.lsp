;;; test-std-active-document.lsp - std:active-document 测试
(defun test:std-active-document ()
  (test:suite 'std)
  (test:add-case 'std 'active-document '((lambda () (vl-catch-all-apply 'std:active-document (list)))) nil)
  (test:run-all))
(test:std-active-document)
