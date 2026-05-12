;;; test-dcl-dialog.lsp - dcl:dialog 测试
(defun test:dcl-dialog ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'dialog '((lambda () (vl-catch-all-apply 'dcl:dialog (list)))) nil)
  (test:run-all))
(test:dcl-dialog)
