;;; test-dcl-cell.lsp - dcl:cell 测试
(defun test:dcl-cell ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'cell '((lambda () (vl-catch-all-apply 'dcl:cell (list)))) nil)
  (test:run-all))
(test:dcl-cell)
