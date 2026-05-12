;;; test-dcl-img.lsp - dcl:img 测试
(defun test:dcl-img ()
  (test:suite 'dcl)
  (test:add-case 'dcl 'img '((lambda () (vl-catch-all-apply 'dcl:img (list)))) nil)
  (test:run-all))
(test:dcl-img)
