;;; test-clipboard-setdata.lsp - clipboard:setdata 测试
(defun test:clipboard-setdata ()
  (test:suite 'clipboard)
  (test:add-case 'clipboard 'setdata '((lambda () (vl-catch-all-apply 'clipboard:setdata (list)))) nil)
  (test:run-all))
(test:clipboard-setdata)
