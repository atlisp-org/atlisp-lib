;;; test-tbl-dxf2obj.lsp - tbl:dxf2obj 测试
(defun test:tbl-dxf2obj ()
  (test:suite 'tbl)
  (test:add-case 'tbl 'dxf2obj '((lambda () (vl-catch-all-apply 'tbl:dxf2obj (list)))) nil)
  (test:run-all))
(test:tbl-dxf2obj)
