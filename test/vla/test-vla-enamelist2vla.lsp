;;; test-vla-enamelist2vla.lsp - vla:enamelist2vla 测试
(defun test:vla-enamelist2vla ()
  (test:suite 'vla)
  (test:add-case 'vla 'enamelist2vla '((lambda () (vl-catch-all-apply 'vla:enamelist2vla (list)))) nil)
  (test:run-all))
(test:vla-enamelist2vla)
