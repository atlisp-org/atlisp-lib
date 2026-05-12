;;; test-clipboard-getdata.lsp - clipboard:getdata 测试
(defun test:clipboard-getdata ()
  (test:suite 'clipboard)
  (test:add-case 'clipboard 'getdata '((lambda () (vl-catch-all-apply 'clipboard:getdata (list)))) nil)
  (test:run-all))
(test:clipboard-getdata)
