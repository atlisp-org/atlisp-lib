;;; test-dcl-end-dialog.lsp - dcl:end-dialog 测试
(defun test:dcl-end-dialog ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'end-dialog '((lambda () (vl-catch-all-apply 'dcl:end-dialog (list)))) nil)
  (test:run-all))
(test:dcl-end-dialog)
