;;; test-dcl-dialog-end-ok-cancel.lsp - dcl:dialog-end-ok-cancel 测试
(defun test:dcl-dialog-end-ok-cancel ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'dialog-end-ok-cancel '((lambda () (vl-catch-all-apply 'dcl:dialog-end-ok-cancel (list)))) nil)
  (test:run-all))
(test:dcl-dialog-end-ok-cancel)
