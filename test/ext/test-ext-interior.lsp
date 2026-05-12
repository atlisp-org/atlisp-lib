;;; test-ext-interior.lsp - ext:interior 测试
(defun test:ext-interior ()
  (test:suite 'ext)
  (test:add-case 'ext 'interior '((lambda () (vl-catch-all-apply 'ext:interior (list 'beep)))) nil)
  (test:run-all))
(test:ext-interior)