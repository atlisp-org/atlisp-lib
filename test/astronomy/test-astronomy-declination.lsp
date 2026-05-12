;;; test-astronomy-declination.lsp - astron:declination 测试
(defun test:astron-declination ()
  (test:suite 'astronomy)
  (test:add-case 'astronomy 'declination '((lambda () (vl-catch-all-apply 'astron:declination nil))) nil)
  (test:run-all))
(test:astron-declination)