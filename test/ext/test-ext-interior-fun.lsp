;;; test-ext-interior-fun.lsp - ext:interior-fun 测试
(defun test:ext-interior-fun ()
  (test:suite 'ext)
  (test:add-case 'ext 'interior-fun '((lambda () (vl-catch-all-apply 'ext:interior-fun (list 'beep)))) nil)
  (test:run-all))
(test:ext-interior-fun)