;;; test-text-box.lsp - text:box 测试
(defun test:text-box ()
  (test:suite 'text)
  (test:add-case 'text 'box '((lambda () (vl-catch-all-apply 'text:box (list nil)))) nil)
  (test:run-all))
(test:text-box)