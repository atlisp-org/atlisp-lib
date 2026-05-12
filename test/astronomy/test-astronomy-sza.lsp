;;; test-astronomy-sza.lsp - astronomy:sza 测试
(defun test:astronomy-sza ()
  (test:suite 'astronomy)
  (test:add-case 'astronomy 'sza '((lambda () (vl-catch-all-apply 'astronomy:sza (list 45 180)))) nil)
  (test:run-all))
(test:astronomy-sza)