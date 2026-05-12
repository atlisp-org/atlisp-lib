;;; test-std-acad-object.lsp - std:acad-object 测试
(defun test:std-acad-object ()
  (test:suite 'std)
  (test:add-case 'std 'acad-object '((lambda () (vl-catch-all-apply 'std:acad-object (list)))) nil)
  (test:run-all))
(test:std-acad-object)
