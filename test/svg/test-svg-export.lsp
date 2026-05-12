;;; test-svg-export.lsp - svg:export 测试
(defun test:svg-export ()
  (test:suite 'svg)
  (test:add-case 'svg 'export '((lambda () (vl-catch-all-apply 'svg:export (list nil "test.svg")))) nil)
  (test:run-all))
(test:svg-export)