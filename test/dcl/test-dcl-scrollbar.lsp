;;; test-dcl-scrollbar.lsp - dcl:scrollbar 测试
(defun test:dcl-scrollbar ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'scrollbar '((lambda () (vl-catch-all-apply 'dcl:scrollbar (list)))) nil)
  (test:run-all))
(test:dcl-scrollbar)
