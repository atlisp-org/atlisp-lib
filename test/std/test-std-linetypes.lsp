;;; test-std-linetypes.lsp - std:linetypes 测试
(defun test:std-linetypes ()
  (test:suite 'std)
  (test:add-case 'std 'linetypes '((lambda () (vl-catch-all-apply 'std:linetypes (list)))) nil)
  (test:run-all))
(test:std-linetypes)
