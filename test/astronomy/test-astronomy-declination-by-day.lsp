;;; test-astronomy-declination-by-day.lsp - astronomy:declination-by-day 测试
(defun test:astronomy-declination-by-day ()
  (test:suite 'astronomy)
  (test:add-case 'astronomy 'declination-by-day '((lambda () (vl-catch-all-apply 'astronomy:declination-by-day (list 1)))) nil)
  (test:add-case 'astronomy 'declination-by-day '((lambda () (vl-catch-all-apply 'astronomy:declination-by-day (list 172)))) nil)
  (test:run-all))
(test:astronomy-declination-by-day)